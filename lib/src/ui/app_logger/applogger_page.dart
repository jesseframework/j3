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
import 'package:j3enterprise/src/resources/shared/function/schedule_background_jobs.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/ui/app_logger/applogger_form.dart';
import 'package:j3enterprise/src/ui/app_logger/bloc/applogger_bloc.dart';

class AppLoggerPage extends StatelessWidget {
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
        title: Text(AppLocalization.of(context).translate('title_applogger') ??
            'App Logger'),
        actions: [
          IconButton(
            icon: Icon(Icons.sync),
            tooltip: 'Start Sync Jobs',
<<<<<<< HEAD
            onPressed: () async {
              await syncClickScheduler();
=======
            onPressed: () {
              syncClickleScheduler();
>>>>>>> 3155339cff24631565403ae694c6e3af0e8966bb
            },
          ),
          SizedBox(
            width: 3,
          ),
          IconButton(
            icon: Icon(Icons.cancel),
            tooltip: 'Cancel Sync Jobs',
<<<<<<< HEAD
            onPressed: () async {
              await syncClickCancel();
=======
            onPressed: () {
              syncClickCancel();
>>>>>>> 3155339cff24631565403ae694c6e3af0e8966bb
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
            return ApploggerBloc();
          },
          child: Stack(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Flexible(child: AppLoggerForm())],
            )
          ]),
        ),
      ),
    );
  }
}
