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


import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/utils/date_formating.dart';
import 'package:moor/moor.dart' as moor;

class UpdateBackgroundJobStatus {
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  var db;
  UpdateBackgroundJobStatus() {
    db = AppDatabase();
    backgroundJobScheduleDao = new BackgroundJobScheduleDao(db);
  }

  Future<void> updateJobStatus(String jobName, String jobStatus) async {
    String formatted = await formatDate(DateTime.now().toString());

    var fromData = new BackgroundJobScheduleCompanion(
        jobStatus: moor.Value(jobStatus),
        lastRun: moor.Value(DateTime.tryParse(formatted)));

    await backgroundJobScheduleDao.updateBackgroundJobStstus(
        fromData, jobName, DateTime.now());
  }
}
