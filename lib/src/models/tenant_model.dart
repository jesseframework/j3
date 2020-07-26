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

class Tenant extends Table {
  IntColumn get tenantId => integer().autoIncrement()();
  TextColumn get tenantName => text().nullable()();
  IntColumn get tenantState => integer().nullable()();
  IntColumn get userId => integer().nullable()();
  TextColumn get userName => text().nullable()();

  @override
  Set<Column> get primaryKey => {tenantId};
}
