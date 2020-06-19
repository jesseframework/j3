// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$RestApiService extends RestApiService {
  _$RestApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = RestApiService;

  @override
  Future<Response<dynamic>> login(Map<String, dynamic> body) {
    final $url = '/api/TokenAuth/Authenticate';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> isTenantAvailable(Map<String, dynamic> body) {
    final $url = '/api/services/app/Account/IsTenantAvailable';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> mobileAppLogger(Map<String, dynamic> body) {
    final $url = '/api/services/app/MobileAppLogger/Create';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getUser(int id) {
    final $url = '/api/services/app/User/Get';
    final $params = <String, dynamic>{'id': id};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateUserHash(Map<String, dynamic> body) {
    final $url = '/api/services/app/User/UpdateMobileHash';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> sampleWithUrlAndQuery(String url, String page) {
    final $url = '/api/$url';
    final $params = <String, dynamic>{'page': page};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> sampleGet() {
    final $url = '/api/get';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> register(Map<String, dynamic> body) {
    final $url = '/api/register';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> logout() {
    final $url = '/api/logout';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
