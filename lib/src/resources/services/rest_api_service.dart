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

part 'rest_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class RestApiService extends ChopperService {
  //Authenticate
  @Post(path: '/TokenAuth/Authenticate')
  Future<Response> login(@Body() Map<String, dynamic> body);

  @Post(path: '/services/app/Account/IsTenantAvailable')
  Future<Response> isTenantAvailable(@Body() Map<String, dynamic> body);

  @Get(path: '/services/app/User/Get')
  Future<Response> getUser(@Query() int id);

  @Put(path: '/services/app/User/UpdateMobileHash')
  Future<Response> updateUserHash(@Body() Map<String, dynamic> body);

  //AppLogger
  @Post(path: '/services/app/MobileAppLogger/Create')
  Future<Response> mobileAppLogger(@Body() Map<String, dynamic> body);

  //System Setting

  @Get(path: '/services/app/Preference/GetAll')
  Future<Response> getPreference();

  @Get(path: '/services/app/NonGlobalPreference/GetAll')
  Future<Response> getNonGlobalPreference();

  @Get(path: '/services/app/BusinessRule/GetAll')
  Future<Response> getBusinessRule();

  @Get(path: '/services/app/NonGlobalBusinessRule/GetAll')
  Future<Response> getNonGlobalBusinessRule();

  //Mobile Desktop
  @Get(path: 'services/app/MobileDesktop/GetAll')
  Future<Response> getMobileDesktop();

  //End user Point

  @Post(path: '/{url}')
  Future<Response> sampleWithUrlAndQuery(
      @Path() String url, @Query() String page);

  @Get(path: '/get')
  Future<Response> sampleGet();

  @Post(path: '/register')
  Future<Response> register(@Body() Map<String, dynamic> body);

  @Post(path: '/logout')
  Future<Response> logout();

  static RestApiService create([ChopperClient client]) =>
      _$RestApiService(client);
}
