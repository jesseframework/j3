/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2   021 Jesseframework..
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/widgets/dropdown_box.dart';
import 'package:j3enterprise/src/ui/background_jobs/bloc/backgroundjobs_bloc.dart';

class BackgroundJobs extends StatefulWidget {
  @override
  State<BackgroundJobs> createState() => _BackgroundJobs();
}

class _BackgroundJobs extends State<BackgroundJobs> {
  final formKey = new GlobalKey<FormState>();
  int select = 0;
  TimeOfDay time = new TimeOfDay.now();
  DateTime date = DateTime.now();

  var syncfrequencySelectedItem;
  var setjobname;

  _onUpdateeFrequencySelection(String value) {
    setState(() {
      syncfrequencySelectedItem = value;
    });
  }

  _onSetJobNameSelection(String value) {
    setState(() {
      setjobname = value;
    });
  }

  Future<void> _onBackGroundJobStartButtonPress() async {
    formKey.currentState.validate();
    BlocProvider.of<BackgroundJobsBloc>(context).add(BackgroundJobsStart(
        context: context,
        jobname: setjobname,
        startDateTime: DateTime.now().toString(),
        syncFrequency: syncfrequencySelectedItem));
  }

  Future<void> _onBackGroundJobCancelButtonPress() async {
    formKey.currentState.validate();
    BlocProvider.of<BackgroundJobsBloc>(context).add(BackgroundJobsCancel(
        jobName: setjobname,
        syncFrequency: syncfrequencySelectedItem,
        context: context));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BackgroundJobsBloc, BackgroundJobsState>(
        listener: (context, state) {
      if (state is BackgroundJobsFailure) {
        Scaffold.of(context)
            .showSnackBar(new SnackBar(content: new Text(state.error)));
      }
      if (state is BackgroundJobsSuccess) {
        Scaffold.of(context)
            .showSnackBar(new SnackBar(content: new Text(state.userMessage)));
      }

      if (state is BackgroundJobsStoped) {
        Scaffold.of(context)
            .showSnackBar(new SnackBar(content: new Text(state.userMessage)));
      }
    }, child: BlocBuilder<BackgroundJobsBloc, BackgroundJobsState>(
            builder: (context, state) {
      var bloc = BlocProvider.of<BackgroundJobsBloc>(context);
      return _buildForm(bloc);
    }));
  }

  Widget _buildForm(BackgroundJobsBloc bloc) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white, boxShadow: kElevationToShadow[4]),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.grey,
          //   ),
          //   child: Padding(
          //     padding:
          //         const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
          //     child: Text(
          //       AppLocalization.of(context)
          //               .translate('schedule_jobs_sub_title_backgroundjob') ??
          //           'Schedule Jobs',
          //       style: TextStyle(color: Colors.white, fontSize: 24),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    time != null
                        ? Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              time.hour >= 12
                                  ? "${time.hour - 12} : ${time.minute} PM"
                                  : "${time.hour} : ${time.minute} AM",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        : Container(
                            height: 0,
                            width: 0,
                          ),
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: kElevationToShadow[2]),
                      child: IconButton(
                        icon: Icon(Icons.alarm),
                        onPressed: () async {
                          var newTime = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());
                          setState(() {
                            time = newTime;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    date != null
                        ? Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "${date.day}/${date.month}/${date.year}",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        : Container(
                            height: 0,
                            width: 0,
                          ),
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: kElevationToShadow[2]),
                      child: IconButton(
                        icon: Icon(Icons.date_range),
                        onPressed: () async {
                          var result = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1970),
                              lastDate: DateTime(2100));

                          setState(() {
                            date = result;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.00),
            child: DropdownFormFieldNormalReuse(
              _onSetJobNameSelection,
              hintText: AppLocalization.of(context).translate('set_job_name') ??
                  'Selected Job',
              selectedValue: setjobname,
              listData: [
                'Device Setting',
                'Log Shipping',
                'Validate Enrollment',
                'Configuration',
                'Mobile Desktop'
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.00),
            child: DropdownFormFieldNormalReuse(
              _onUpdateeFrequencySelection,
              hintText: AppLocalization.of(context)
                      .translate('sync_frequency_label_communication') ??
                  'Sync Frequency',
              selectedValue: syncfrequencySelectedItem,
              listData: [
                'Every Minute',
                'Every 5 Minutes',
                'Every 20 Minutes',
                'Every Day',
                'Every Month',
                'Every Year'
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Container(
                    child: FlatButton(
                  onPressed: () {
                    _onBackGroundJobStartButtonPress();
                  },
                  child: Text(
                    AppLocalization.of(context)
                        .translate('start_button_backgroundjob'),
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                )),
              ),
              Container(
                decoration: BoxDecoration(),
                child: FlatButton(
                  onPressed: () async {
                    await _onBackGroundJobCancelButtonPress();
                  },
                  child: Text(
                      AppLocalization.of(context)
                          .translate('cancel_button_backgroundjob'),
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 5.0),
                ExpansionTile(
                  title: Text(
                    "System Jobs",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StreamBuilder(
                stream: bloc.backgroundJobScheduleDao.watchAllJobs(),
                builder: (context,
                    AsyncSnapshot<List<BackgroundJobScheduleData>> snapshot) {
                  final jobs = snapshot.data ?? List();

                  return Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: jobs.length,
                      itemBuilder: (_, index) {
                        //final itemTask = jobs[index];
                        return Container(
                          color: (index % 2 == 0)
                              ? Theme.of(context).cardColor
                              : Theme.of(context).backgroundColor,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Divider(height: 0.5),
                                    ListTile(
                                      title: Text(
                                        '${jobs[index].jobName}',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.blueAccent),
                                      ),
                                      subtitle: Text(
                                        '${jobs[index].syncFrequency}',
                                        style: new TextStyle(
                                          fontSize: 18.0,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Divider(height: 0.5),
                                    ListTile(
                                      title: Text(
                                        '${jobs[index].jobStatus}',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.blueAccent),
                                      ),
                                      subtitle: Text(
                                        '${jobs[index].lastRun}',
                                        style: new TextStyle(
                                          fontSize: 18.0,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
