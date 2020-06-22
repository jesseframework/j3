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
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/ui/app_logger/bloc/applogger_bloc.dart';

class AppLoggerForm extends StatefulWidget {
  @override
  State<AppLoggerForm> createState() => _AppLoggerForm();
}

class _AppLoggerForm extends State<AppLoggerForm> {
  final formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApploggerBloc, ApploggerState>(listener:
        (context, state) {
      if (state is ApploggerFailure) {
        Scaffold.of(context)
            .showSnackBar(new SnackBar(content: new Text(state.error)));
      }
    }, child:
        BlocBuilder<ApploggerBloc, ApploggerState>(builder: (context, state) {
      var bloc = BlocProvider.of<ApploggerBloc>(context);
      return _buildForm(bloc);
    }));
  }

  Widget _buildForm(ApploggerBloc bloc) {
    return Form(
        key: formKey,
        child: SingleChildScrollView(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StreamBuilder(
                stream: bloc.applicationLoggerDao.watchAllAppLog(),
                builder: (context,
                    AsyncSnapshot<List<ApplicationLoggerData>> snapshot) {
                  final data = snapshot.data ?? List();
                  return Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 9,
                          itemBuilder: (_, index) {
                            return Container(
                              color: (index % 2 == 0)
                                  ? Colors.blue[50]
                                  : Colors.white,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Divider(
                                        height: 0.5,
                                      ),
                                      ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.blue[100],
                                          child: Text(
                                              '${data[index].logSeverity}'),
                                        ),
                                        title: Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                                    '${data[index].functionName}')),
                                            Expanded(
                                                child: Text(
                                                    '${data[index].logDateTime}')),
                                          ],
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                                    '${data[index].logDescription}')),
                                            Expanded(
                                                child: Text(
                                                    '${data[index].documentNo}')),
                                          ],
                                        ),
                                      )
                                    ],
                                  ))
                                ],
                              ),
                            );
                          }));
                })
          ],
        )));
  }
}
