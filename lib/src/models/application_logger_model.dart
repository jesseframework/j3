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

import 'package:j3enterprise/src/resources/shared/extension/multi_user.dart';
import 'package:j3enterprise/src/resources/shared/extension/must_have_tenant.dart';
import 'package:moor/moor.dart';

class ApplicationLogger extends Table implements MustHaveTenant, MultiUser {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get functionName => text()();
  DateTimeColumn get logDateTime => dateTime()();
  TextColumn get syncFrequency => text()();
  TextColumn get logDescription => text()();
  TextColumn get documentNo => text()();
  TextColumn get deviceId => text()();
  TextColumn get logCode => text()();
  TextColumn get logSeverity => text()();
  DateTimeColumn get exportDateTime => dateTime().nullable()();
  TextColumn get exportStatus => text().withDefault(Constant('Pending'))();
  TextColumn get syncError => text().nullable()();
  IntColumn get tenantId => integer().nullable()();
  TextColumn get uerName => text().nullable()();
  IntColumn get userId => integer().nullable()();
  
}
