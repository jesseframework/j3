import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/resources/shared/function/schedule_background_jobs.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/ui/background_jobs/backgroundjobs_from.dart';
import 'package:j3enterprise/src/ui/background_jobs/bloc/backgroundjobs_bloc.dart';

class BackgroundJobsPage extends StatelessWidget {
  //ToDo add button transulation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title:
            Text(AppLocalization.of(context).translate('title_backgroundjob')),
        actions: [
          IconButton(
            icon: Icon(Icons.sync),
            tooltip: 'Start Sync Jobs',
            onPressed: () {
              syncClickleScheduler();
            },
          ),
          SizedBox(
            width: 3,
          ),
          IconButton(
            icon: Icon(Icons.cancel),
            tooltip: 'Cancel Sync Jobs',
            onPressed: () {
              syncClickCancel();
            },
          ),
          SizedBox(
            width: 3,
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            tooltip: 'More options',
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) {
            return BackgroundJobsBloc();
          },
          child: Stack(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Flexible(child: BackgroundJobsForm())],
            )
          ]),
        ),
      ),
    );
  }
}
