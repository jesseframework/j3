import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'rest_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class RestApiService extends ChopperService {
  @Post(path: '/TokenAuth/Authenticate')
  Future<Response> login(@Body() Map<String, dynamic> body);

 @Get(path: '/services/app/User/Get')
  Future<Response> getUser(@Query() int id);

  @Post(path: '/{url}')
  Future<Response> sampleWithUrlAndQuery(@Path() String url, @Query() String page);

  @Get(path: '/get')
  Future<Response> sampleGet();

  @Post(path: '/register')
  Future<Response> register(@Body() Map<String, dynamic> body);

  @Post(path: '/logout')
  Future<Response> logout();

  static RestApiService create([ChopperClient client]) =>
      _$RestApiService(client);
}
