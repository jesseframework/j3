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
import 'package:j3enterprise/src/models/communication_model.dart';
import 'package:moor/moor.dart';

part 'communication_setup_crud.g.dart';

@UseDao(tables: [Communication])
class CommunicationDao extends DatabaseAccessor<AppDatabase>
    with _$CommunicationDaoMixin {
  final AppDatabase db;
  CommunicationDao(this.db) : super(db);
//Get communication
  Future<List<CommunicationData>> getCommunicationDataByType(
      String communicationType) {
    return (select(db.communication)
          ..where((t) => t.communicationType.equals(communicationType)))
        .get();
  }

  //Update communication
  Future updateERPCommunnication(CommunicationCompanion comsset) {
    return (update(db.communication)
          ..where((t) => t.communicationType.equals('ERP')))
        .write(
      CommunicationCompanion(
          typeofErp: comsset.typeofErp,
          serverUrl: comsset.serverUrl,
          userName: comsset.userName,
          newPasskey: comsset.newPasskey,
          confirmPasskey: comsset.confirmPasskey,
          syncFrequency: comsset.syncFrequency),
    );
  }

  Future updateAPICommunnication(CommunicationCompanion comsset) {
    return (update(db.communication)
          ..where((t) => t.communicationType.equals('API')))
        .write(
      CommunicationCompanion(
          serverUrl: comsset.serverUrl,
          userName: comsset.userName,
          newPasskey: comsset.newPasskey,
          confirmPasskey: comsset.confirmPasskey,
          syncFrequency: comsset.syncFrequency),
    );
  }

//Create communication
  Future insertCommunnication(CommunicationCompanion comsset) =>
      into(db.communication).insert(comsset);

//Wipe communication table
  Future deleteAllCommuniction() => delete(db.communication).go();
}
