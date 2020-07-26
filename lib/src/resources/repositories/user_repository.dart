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

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:j3enterprise/src/resources/services/rest_api_service.dart';
import 'package:j3enterprise/src/resources/shared/utils/langcustomdialogbox.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meta/meta.dart';
import 'dart:io' show Platform;

class UserRepository {
  var api = ApiClient.chopper.getService<RestApiService>();
  Future<Response> authenticate({
    @required String username,
    @required String password,
  }) async {
    return await api.login({
      "rememberClient": true,
      "userNameOrEmailAddress": username,
      "password": password
    });
  }

  Future<Response> getUser({@required int userID}) async {
    return await api.getUser(userID);
  }

  Future<Response> putUserHash({
    @required int userId,
    @required String mobileHashCode,
    @required int tenantId,
  }) async {
    return await api.updateUserHash({
      "userID": userId,
      "mobileHashCode": mobileHashCode,
      "tenantId": tenantId
    });
  }

  Future<Response> checkTenant({@required String tenancyName}) async {
    return await api.isTenantAvailable({"tenancyName": tenancyName});
  }

  Future<void> deleteToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.remove('access_token');
    await _prefs.remove('userId');
    await _prefs.remove('tenantid');
    return;
  }

  Future<void> persistToken(String token, int userId, int tenantId) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString("access_token", token);
    await _prefs.setString("userId", userId.toString());
    await _prefs.setString("tenantid", tenantId.toString());
    return;
  }

  Future<void> setUserSharedPref(
      String deviceId,
      String deviceState,
      String tenantState,
      String userName,
      String tenantName,
      int tenantId,
      int userId) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString('deviceId', deviceId);
    await _prefs.setString('deviceState', deviceState);
    await _prefs.setString('tenantState', deviceState);
    await _prefs.setString('userName', userName);
    await _prefs.setString('tenantName', tenantName);
    await _prefs.setInt('tenantId', tenantId);
    await _prefs.setInt('userId', userId);
    return;
  }

  Future<Map> getUserSharedPref() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String deviceId = await _prefs.get('deviceId');
    String deviceState = await _prefs.get('deviceState');
    String tenantState = await _prefs.get('tenantState');
    String userName = await _prefs.get('userName');
    String tenantName = await _prefs.get('tenantName');
    int tenantId = await _prefs.get('tenantId');
    int userId = await _prefs.get('userId');

    Map<String, String> map = {
      "deviceId": "$deviceId",
      "userId": "$userId",
      "deviceState": "$deviceState",
      "tenantState": "$tenantState",
      "userName": "$userName",
      "tenantName": "$tenantName",
      "tenantId": "$tenantId",
    };
    return map;
  }

  Future<String> getTenantFromSharedPref() async {
    final _prefs = await SharedPreferences.getInstance();
    String result = _prefs.getString('tenatName');
    return result;
  }

  Future<void> setTenantIntoSharedPref(String tenantName) async {
    final _prefs = await SharedPreferences.getInstance();
    await _prefs.setString('tenatName', tenantName);
    return;
  }

  Future<bool> hasToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.containsKey('access_token');
  }

  Future<Map> getPreferenceData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = await prefs.get("access_token");
    int userId = int.tryParse(await prefs.get("userId"));
    int tenantId = int.tryParse(await prefs.get("tenantid"));

    Map<String, String> map = {
      "token": "$token",
      "userId": "$userId",
      "tenantid": "$tenantId",
    };

    return map;
  }

//        ********** GET LOCALE FROM SHARED_PREFERENCE **********

  Future<Locale> setLocale(String languageCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(USER_LANGUAGE_CODE_KEY, languageCode);
    return _locale(languageCode);
  }

  Locale _locale(String languageCode) {
    Locale _tempLocale;
    switch (languageCode) {
      case ENGLISH:
        _tempLocale = Locale(ENGLISH, 'US');
        break;
      case SPANISH:
        _tempLocale = Locale(SPANISH, 'ES');
        break;
      case HINDI:
        _tempLocale = Locale(HINDI, 'SK');
        break;
      default:
        _tempLocale = Locale(ENGLISH, 'US');
        break;
    }

    return _tempLocale;
  }

  Future<Locale> getLocale() async {
    String finalLocale;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userLocale = prefs.getString(USER_LANGUAGE_CODE_KEY);
    String deviceLocale = prefs.getString(DEVICE_LANGUAGE_CODE_KEY);
    String defalutDeviceLocale = await getDeviceLocale();
    if (deviceLocale == null) {
      prefs.setString(DEVICE_LANGUAGE_CODE_KEY, defalutDeviceLocale);
      finalLocale = defalutDeviceLocale;
    } else if (userLocale != null) {
      finalLocale = userLocale;
    } else {
      finalLocale = defalutDeviceLocale;
    }
    if (defalutDeviceLocale != deviceLocale) {
      prefs.setString(DEVICE_LANGUAGE_CODE_KEY, defalutDeviceLocale);
    }
    return _locale(finalLocale);
  }

  Future getDeviceLocale() async {
    List languages;
    String currentLocale;
    if (Platform.isAndroid || Platform.isIOS) {
      try {
        languages = await Devicelocale.preferredLanguages;
        print(languages);
      } on PlatformException {
        print("Error obtaining preferred languages");
        return null;
      }
      try {
        currentLocale = await Devicelocale.currentLocale;
      } on PlatformException {
        print("Error obtaining current locale");
        return null;
      }
      return currentLocale.substring(0, 2);
    }

    return null;
  }

  Future setTheme(String theme) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString('theme', theme);
  }

  Future<String> getTheme() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String theme = await _prefs.getString('theme');
    return theme;
  }
}
