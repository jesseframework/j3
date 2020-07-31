/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
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
import 'package:j3enterprise/src/ui/background_jobs/bloc/backgroundjobs_bloc.dart';

import 'backgroundjobs_page.dart';

class BackgroundJobsPage extends StatefulWidget {
  static final route = '/BackgroundJobs';

  @override
  _BackgroundJobsPageState createState() => _BackgroundJobsPageState();
}

class _BackgroundJobsPageState extends State<BackgroundJobsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          return BackgroundJobsBloc();
        },
        child: Scaffold(

          // appBar: AppBar(
          //   leading: IconButton(
          //     icon: Icon(Icons.chevron_left),
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   title: Text(
          //       AppLocalization.of(context).translate('title_backgroundjob') ??
          //           'Background Jobs'),
          //   actions: [
          //     IconButton(
          //       icon: Icon(Icons.sync),
          //       tooltip: 'Start Sync Jobs',
          //       onPressed: () async {
          //         //await syncClickScheduler();
          //         BlocProvider.of<BackgroundJobsBloc>(context)
          //             .add(BackgroundJobsStartAll());
          //       },
          //     ),
          //     SizedBox(
          //       width: 3,
          //     ),
          //     IconButton(
          //       icon: Icon(Icons.cancel),
          //       tooltip: 'Cancel Sync Jobs',
          //       onPressed: () async {
          //         await syncClickCancel();
          //       },
          //     ),
          //     SizedBox(
          //       width: 3,
          //     ),
          //     IconButton(
          //       icon: Icon(Icons.more_vert),
          //       tooltip: 'More options',
          //       onPressed: () {},
          //     ),
          //   ],
          // ),
          body: RefreshIndicator(
            onRefresh: () async {
              return Duration(milliseconds: 3000);
            },
            child: BlocProvider(
              create: (context) {
                return BackgroundJobsBloc();
              },
              child: BackgroundJobs(),
            ),
          ),
        ));
  }
}
