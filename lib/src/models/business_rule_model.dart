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

import 'package:moor/moor.dart';

class BusinessRule extends Table {
  TextColumn get code => text()();
  TextColumn get ruleName => text().nullable()();
  TextColumn get value => text()();
  TextColumn get description => text().nullable()();
  BoolColumn get isGlobalRule => boolean().withDefault(Constant(false))();
  TextColumn get deviceRule => text().nullable()();
  TextColumn get userRule => text().nullable()();
  TextColumn get domain => text().nullable()();
  DateTimeColumn get expiredDateTime => dateTime().nullable()();

  TextColumn get syncError => text().nullable()();
  TextColumn get dataType => text().nullable()();
  TextColumn get dataValue => text().nullable()();
  TextColumn get groups => text().nullable()();

  @override
  Set<Column> get primaryKey => {code};
}
