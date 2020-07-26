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

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:j3enterprise/src/database/crud/communication/communication_setup_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:meta/meta.dart';
import 'package:moor/moor.dart';

part 'communication_event.dart';
part 'communication_state.dart';

class CommunicationBloc extends Bloc<CommunicationEvent, CommunicationState> {
  CommunicationDao communicationDao;
  CommunicationData communicationData;
  final String communicationType;
  var db;

  CommunicationBloc({this.communicationType}) {
    db = AppDatabase();
    communicationDao = CommunicationDao(db);
  }

  @override
  CommunicationState get initialState => CommunicationInitial();

  @override
  Stream<CommunicationState> mapEventToState(
    CommunicationEvent event,
  ) async* {
    if (event is SaveCommunicationButtonPressed) {
      // set state as loading
      yield CommunicationInserting();
      // save data to db
      await communicationDao.insertCommunnication(event.data);

      //update server url in chapper instant after save
      var url = event.data.serverUrl;
      ApiClient.updateClient(url.value);

      // set the success state
      yield CommunicationSuccess();
    }

    if (event is UpdateAPICommunicationButtonPressed) {
      yield CommunicationUpdate();

      await communicationDao.updateAPICommunnication(event.data);

      var url = event.data.serverUrl;
      ApiClient.updateClient(url.value);
      // set the success state
      //yield CommunicationSuccess();
      yield CommunicationUpdateuccess(data: event.data);
    }

    if (event is UpdateERPCommunicationButtonPressed) {
      yield CommunicationUpdate();

      await communicationDao.updateERPCommunnication(event.data);
      var url = event.data.serverUrl;
      ApiClient.updateClient(url.value);

      // set the success state
      //yield CommunicationSuccess();
      yield CommunicationUpdateuccess(data: event.data);
    }

    if (event is OnFormLoadGetSaveCommunication) {
      yield CommunicationLoading();

      var viewCommunicationDataByType = await communicationDao
          .getCommunicationDataByType(event.communicationType);

      var _viewCommunicationDataByType = viewCommunicationDataByType.length > 0;
      var data =
          _viewCommunicationDataByType ? viewCommunicationDataByType : null;

      // set the success state
      yield CommunicationLoadSuccess(data: data);
    }
  }
}
