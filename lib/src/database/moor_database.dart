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


import 'dart:io';

import 'package:j3enterprise/src/models/application_logger_model.dart';
import 'package:j3enterprise/src/models/background_job_schedule_model.dart';
import 'package:j3enterprise/src/models/background_jobs_logs_model.dart';
import 'package:j3enterprise/src/models/business_rule_model.dart';
import 'package:j3enterprise/src/models/communication_model.dart';
import 'package:j3enterprise/src/models/desktop_model.dart';
import 'package:j3enterprise/src/models/mobile_device_model.dart';
import 'package:j3enterprise/src/models/non_global_business_rule.dart';
import 'package:j3enterprise/src/models/non_global_preference_setting.dart';
import 'package:j3enterprise/src/models/preference_model.dart';

import 'package:j3enterprise/src/models/tenant_model.dart';
import 'package:j3enterprise/src/models/user_model.dart';
import 'package:j3enterprise/src/resources/shared/utils/date_formating.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as paths;

part 'moor_database.g.dart';

@UseMoor(tables: [
  Users,
  Communication,
  BackgroundJobSchedule,
  BackgroundJobLogs,
  Preference,
  MobileDevice,
  BusinessRule,
  NonGlobalBusinessRule,
  ApplicationLogger,
  Tenant,
  NonGlobalPreference,
  Desktop
])
class AppDatabase extends _$AppDatabase {
  static AppDatabase _db = _constructDb();

  factory AppDatabase() {
    return _db;
  }

  AppDatabase._internal(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration => MigrationStrategy(
          // Runs if the database has already been opened on the device with a lower version
          onUpgrade: (doMigration, from, to) async {
        if (from == 2) {
          //await migrator.addColumn(tasks, tasks.tagName);
          //await doMigration.createTable(ApplicationLogger);
        }

        // ignore: unnecessary_statements
        (db, details) async {
          await db.customStatement(
              'PRAGMA foreign_keys = ON ' + 'PRAGMA journal_mode=WAL');
        };
      }, beforeOpen: (details) async {
        if (details.wasCreated) {
          String systemDate = await formatDate(DateTime.now().toString());
          await into(backgroundJobSchedule).insert(BackgroundJobScheduleData(
              id: 1,
              jobName: "Mobile Desktop",
              startDateTime: DateTime.tryParse(systemDate),
              syncFrequency: "Every 20 Minutes",
              enableJob: true,
              lastRun: DateTime.tryParse(systemDate),
              jobStatus: "Never Run"));
          await into(backgroundJobSchedule).insert(BackgroundJobScheduleData(
              id: 2,
              jobName: "Configuration",
              startDateTime: DateTime.tryParse(systemDate),
              syncFrequency: "Every 20 Minutes",
              enableJob: true,
              lastRun: DateTime.tryParse(systemDate),
              jobStatus: "Never Run"));
          await into(backgroundJobSchedule).insert(BackgroundJobScheduleData(
              id: 3,
              jobName: "Log Shipping",
              startDateTime: DateTime.tryParse(systemDate),
              syncFrequency: "Every Day",
              enableJob: true,
              lastRun: DateTime.tryParse(systemDate),
              jobStatus: "Never Run"));
        }
      });

  static AppDatabase _constructDb({bool logStatements = false}) {
    if (Platform.isIOS || Platform.isAndroid) {
      final executor = LazyDatabase(() async {
        final dataDir = await paths.getApplicationDocumentsDirectory();
        final dbFile = File(p.join(dataDir.path, 'db.sqlite'));
        return VmDatabase(dbFile, logStatements: logStatements);
      });
      return AppDatabase._internal(executor);
    }
    if (Platform.isMacOS || Platform.isLinux) {
      final file = File('db.sqlite');
      return AppDatabase._internal(
          VmDatabase(file, logStatements: logStatements));
    }
    if (Platform.isWindows) {
      final file = File('db.sqlite');
      return AppDatabase._internal(
          VmDatabase(file, logStatements: logStatements));
    }

    return AppDatabase._internal(
        VmDatabase.memory(logStatements: logStatements));
  }
}
