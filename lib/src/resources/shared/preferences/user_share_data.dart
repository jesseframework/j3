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

import 'package:shared_preferences/shared_preferences.dart';

class UserSharedData {
  Future<void> setUserSharedPref(
      String deviceId,
      String deviceState,
      String tenantState,
      String userName,
      String tenantName,
      String tenantId,
      String userId) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString('deviceId', deviceId);
    await _prefs.setString('deviceState', deviceState);
    await _prefs.setString('tenantState', deviceState);
    await _prefs.setString('userName', userName);
    await _prefs.setString('tenantName', tenantName);
    await _prefs.setString('tenantId', tenantId);
    await _prefs.setString('userId', userId);
    return;
  }

  Future<Map> getUserSharedPref() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String deviceId = await _prefs.get('deviceId');
    String deviceState = await _prefs.get('deviceState');
    String tenantState = await _prefs.get('tenantState');
    String userName = await _prefs.get('userName');
    String tenantName = await _prefs.get('tenantName');
    String tenantId = await _prefs.get('tenantId');
    String userId = await _prefs.get('userId');

    Map<String, String> map = {
      "deviceId": "$deviceId",
      "deviceState": "$deviceState",
      "tenantState": "$tenantState",
      "userName": "$userName",
      "tenantName": "$tenantName",
      "tenantId": "$tenantId",
      "userId": "$userId",
    };
    return map;
  }
}
