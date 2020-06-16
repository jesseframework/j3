import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/resources/api_clients/mobile_data_interceptor.dart';
import 'package:j3enterprise/src/resources/services/rest_api_service.dart';
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
          MobileDataInterceptor(),
          HeadersInterceptor({
            'content-type': 'application/json',
            'Accept': 'application/json'
          }),
          HttpLoggingInterceptor(),
          (Response response) async {
            if (response.statusCode == 401) {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.remove("access_token");
              await prefs.remove("Abp.TenantId");
            }
            return response;
          },
          (Request request) async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            String token = await prefs.get("access_token");
            String tenantId = await prefs.get("tenantId");

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
