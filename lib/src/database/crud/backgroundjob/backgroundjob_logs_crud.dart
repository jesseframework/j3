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

import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/background_jobs_logs_model.dart';
import 'package:moor/moor.dart';

part 'backgroundjob_logs_crud.g.dart';

@UseDao(tables: [BackgroundJobLogs])
class BackgroundJobLogsDao extends DatabaseAccessor<AppDatabase>
    with _$BackgroundJobLogsDaoMixin {
  final AppDatabase db;
  BackgroundJobLogsDao(this.db) : super(db);

  Future<List<BackgroundJobLog>> getAllJobsLog() {
    return (select(db.backgroundJobLogs).get());
  }

  Stream<List<BackgroundJobLog>> watchAllJobsLog() {
    return (select(db.backgroundJobLogs).watch());
  }  

  Future insertJobLog(BackgroundJobLog backgroundJoblog) =>
      into(db.backgroundJobLogs).insert(backgroundJoblog);

  Future updateBackgroundJobLog(BackgroundJobLog backgroundJoblog) =>
      update(db.backgroundJobLogs).replace(backgroundJoblog);

  //Wipe backgroun job table
  Future deleteAllBackgroundJobsLog() => delete(db.backgroundJobLogs).go();
}
