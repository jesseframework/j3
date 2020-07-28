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

class Desktop extends Table {
  IntColumn get id => integer().autoIncrement()();
  //TextColumn get featureCode => text()();
  TextColumn get iconName => text()();
  TextColumn get iconCode => text()();
  TextColumn get iconColour => text()();
  TextColumn get iconFamily => text()();
  TextColumn get navigationRoute => text()();
  TextColumn get iconGroup => text()();
  BoolColumn get isFavorit => boolean().withDefault(Constant(false))();
  TextColumn get userPermission => text()();
   IntColumn get tenantId => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
