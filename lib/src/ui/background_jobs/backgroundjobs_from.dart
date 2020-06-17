import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/widgets/dropdown_box.dart';
import 'package:j3enterprise/src/ui/background_jobs/bloc/backgroundjobs_bloc.dart';
import 'package:moor/moor.dart' as moor;

class BackgroundJobsForm extends StatefulWidget {
  @override
  State<BackgroundJobsForm> createState() => _BackgroundJobsForm();
}

class _BackgroundJobsForm extends State<BackgroundJobsForm> {
  final formKey = new GlobalKey<FormState>();
  int select = 0;
  TimeOfDay time = new TimeOfDay.now();
  DateTime date = DateTime.now();

  BackgroundJobScheduleCompanion _backgroundJobScheduleData;

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

  var _jobnameController = TextEditingController();
  var _startDateTimeContoller = TextEditingController();
  var _syncFrequencyController = TextEditingController();

  void _setTimeInText() {
    //_startDateTimeContoller = TextEditingController(text: '$date $time');
  }

  bool isEnable = true;

  Widget build(BuildContext context) {
    _onBackGroundJobButtonPress() {
      //formKey.currentState.validate();
      BlocProvider.of<BackgroundJobsBloc>(context).add(
          BackgroundJobsSaveButtonPress(
              context: context,
              jobname: setjobname,
              startDateTime: DateTime.now().toString(),
              syncFrequency: syncfrequencySelectedItem));
    }

    return BlocListener<BackgroundJobsBloc, BackgroundJobsState>(
        listener: (context, state) {
      if (state is BackgroundJobsFailure) {
        Scaffold.of(context)
            .showSnackBar(new SnackBar(content: new Text(state.error)));
      }
      if (state is BackgroundJobsSuccess) {
        _backgroundJobScheduleData = state.data;

        _setTimeInText();

        Scaffold.of(context)
            .showSnackBar(new SnackBar(content: new Text(state.userMessage)));
      }
    }, child: BlocBuilder<BackgroundJobsBloc, BackgroundJobsState>(
            builder: (context, state) {
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
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  AppLocalization.of(context)
                          .translate('schedule_jobs_sub_title_backgroundjob') ??
                      'Schedule Jobs',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
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
                            color: Colors.white,
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
                            color: Colors.white,
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
                _onUpdateeFrequencySelection,
                hintText: AppLocalization.of(context)
                        .translate('sync_frequency_label_communication') ??
                    'Sync Frequency',
                selectedValue: syncfrequencySelectedItem,
                listData: [
                  'Every Minet',
                  'Every 5 Minutes',
                  'Every 20 Minutes',
                  'Every Day',
                  'Every Month',
                  'Every Year'
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: DropdownFormFieldNormalReuse(
                _onSetJobNameSelection,
                hintText:
                    AppLocalization.of(context).translate('set_job_name') ??
                        'Selected Job',
                selectedValue: setjobname,
                listData: [
                  'Device Setting',
                  'Log Shipping',
                  'Validate Enrollment'
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Container(
                    child: Text(
                      AppLocalization.of(context)
                          .translate('start_button_backgroundjob'),
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: FlatButton(
                    onPressed: () {
                      _onBackGroundJobButtonPress();
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      AppLocalization.of(context)
                          .translate('running_tab_backgroundjob'),
                      style: TextStyle(
                          color: select == 0 ? Colors.white : Colors.black),
                    ),
                    color: select == 0 ? Colors.blue : Colors.white,
                    onPressed: () {
                      setState(() {
                        select = 0;
                      });
                    },
                  ),
                  FlatButton(
                    color: select == 1 ? Colors.blue : Colors.white,
                    child: Text(
                      AppLocalization.of(context)
                          .translate('systemjobs_tab_backgroundjob'),
                      style: TextStyle(
                          color: select == 1 ? Colors.white : Colors.black),
                    ),
                    onPressed: () {
                      setState(() {
                        select = 1;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        )),
      );
    }));
  }
}
