// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$RestApiService extends RestApiService {
  _$RestApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = RestApiService;

  Future<Response> login(Map<String, dynamic> body) {
    final $url = '/api/TokenAuth/Authenticate';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> getUser(int id) {
    final $url = '/api/services/app/User/Get';
    final Map<String, dynamic> $params = {'id': id};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> sampleWithUrlAndQuery(String url, String page) {
    final $url = '/api/${url}';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> sampleGet() {
    final $url = '/api/get';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> register(Map<String, dynamic> body) {
    final $url = '/api/register';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> logout() {
    final $url = '/api/logout';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
