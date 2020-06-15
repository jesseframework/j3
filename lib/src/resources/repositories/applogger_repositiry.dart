import 'package:chopper/chopper.dart';

import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:j3enterprise/src/resources/services/rest_api_service.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLoggerRepository {
  var api = ApiClient.chopper.getService<RestApiService>();

  Future<void> setDeviceIntoSharedPref(String deviceId, String state) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString('deviceId', deviceId);
    await _prefs.setString('state', state);
    return;
  }

  Future<Response> putAppLogOnServer({
    @required String functionName,
    @required DateTime logDateTime,
    @required String syncFrequency,
    @required String logDescription,
    @required String documentNo,
    @required String logCode,
    @required String logSeverity,
    @required String deviceID,
  }) async {
    return await api.mobileAppLogger({
      "functionName": functionName,
      "logDateTime": logDateTime,
      "syncFrequency": syncFrequency,
      "logDescription": logDescription,
      "documentNo": documentNo,
      "logCode": logCode,
      "logSeverity": logSeverity,
      "deviceID": deviceID
    });
  }
}
