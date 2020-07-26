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

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/resources/services/rest_api_service.dart';
import 'package:j3enterprise/src/resources/shared/preferences/user_share_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient {
  final String apiConnection = 'API';

  static const String URL = 'http://app.j3enterprisecloud.com';

  static ChopperClient chopper;

  static void updateClient(String baseUrl) {
    chopper = ChopperClient(
        baseUrl: baseUrl,
        services: [
          // inject the generated service
          RestApiService.create()
        ],
        interceptors: [
          //MobileDataInterceptor(),
          HeadersInterceptor({
            'content-type': 'application/json',
            'Accept': 'application/json'
          }),
          //HttpLoggingInterceptor(),
          (Response response) async {
            if (response.statusCode == 401) {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.remove("access_token");
              await prefs.remove("Abp.TenantId");
            }
            return response;
          },
          (Request request) async {
            Map<String, String> mapUserSharedData = Map();
            UserSharedData userSharedData = new UserSharedData();
            mapUserSharedData = await userSharedData.getUserSharedPref();
            String _tenantId = mapUserSharedData['tenantId'];

            SharedPreferences prefs = await SharedPreferences.getInstance();
            String token = await prefs.get("access_token");
            String tenantId = _tenantId;

            Map<String, String> map = {
              "Authorization": "Bearer $token",
              'Abp.TenantId': '$tenantId'
            };

            request.headers.addAll(map);
            return request;
          },
        ],
        converter: JsonConverter());
  }
}
