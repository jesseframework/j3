import 'package:chopper/chopper.dart';

part 'rest_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class RestApiService extends ChopperService {
  @Post(path: '/TokenAuth/Authenticate')
  Future<Response> login(@Body() Map<String, dynamic> body);

  @Post(path: '/services/app/Account/IsTenantAvailable')
  Future<Response> isTenantAvailable(@Body() Map<String, dynamic> body);

  @Post(path: '/services/app/MobileAppLogger/Create')
  Future<Response> mobileAppLogger(@Body() Map<String, dynamic> body);

  @Get(path: '/services/app/User/Get')
  Future<Response> getUser(@Query() int id);

  @Get(path: '/services/app/Preference/GetAll')
  Future<Response> getPreference();

    @Get(path: '/services/app/NonGlobalPreference/GetAll')
  Future<Response> getNonGlobalPreference();

  @Get(path: '/services/app/BusinessRule/GetAll')
  Future<Response> getBusinessRule();

  @Get(path: '/services/app/NonGlobalBusinessRule/GetAll')
  Future<Response> getNonGlobalBusinessRule();

  @Put(path: '/services/app/User/UpdateMobileHash')
  Future<Response> updateUserHash(@Body() Map<String, dynamic> body);

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
