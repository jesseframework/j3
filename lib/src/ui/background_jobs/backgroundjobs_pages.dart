import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/ui/background_jobs/backgroundjobs_from.dart';
import 'package:j3enterprise/src/ui/background_jobs/bloc/backgroundjobs_bloc.dart';

class BackgroundJobsPage extends StatefulWidget {
  static final route='/BackgroundJobs';

  @override
  _BackgroundJobsPageState createState() => _BackgroundJobsPageState();
}

class _BackgroundJobsPageState extends State<BackgroundJobsPage> {


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
          Icon(
            Icons.cancel,
            size: 36,
            color: Colors.white,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.sync,
            size: 35,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.cloud_download,
            size: 35,
            color: Colors.white,
          ),
          SizedBox(
            width: 8,
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          return Duration(milliseconds: 3000);
        },
        child: SafeArea(
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
      ),
    );
  }
}
