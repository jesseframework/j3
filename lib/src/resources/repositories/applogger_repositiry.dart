import 'package:chopper/chopper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:j3enterprise/src/database/crud/application_logger/app_logger_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';

import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:j3enterprise/src/resources/services/rest_api_service.dart';
import 'package:j3enterprise/src/resources/shared/utils/date_formating.dart';
import 'package:logging/logging.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AppLoggerRepository {
  var api = ApiClient.chopper.getService<RestApiService>();
  var db;
  static final _log = Logger('AppLogger');
  ApplicationLoggerDao applicationLoggerDao;
  AppLoggerRepository() {
    db = AppDatabase();
    applicationLoggerDao = new ApplicationLoggerDao(db);
  }

  Future<void> setDeviceIntoSharedPref(String deviceId, String state) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString('deviceId', deviceId);
    await _prefs.setString('state', state);
    return;
  }

  //Get data from log

  Future<void> putAppLogOnServer() async {
    try {
      var appLogData = await applicationLoggerDao.getAllAppLog();
      for (var fromDb in appLogData) {
        print('Logdate in API  - $fromDb.logDateTime');

        String formatted = await formatDate(fromDb.logDateTime.toString());

        return await api.mobileAppLogger({
          "functionName": fromDb.functionName,
          "logDateTime": formatted,
          "syncFrequency": fromDb.syncFrequency,
          "logDescription": fromDb.logDescription,
          "documentNo": fromDb.documentNo,
          "logCode": fromDb.logCode,
          "logSeverity": fromDb.logSeverity,
          "deviceID": fromDb.deviceId
        });
      }
    } catch (error) {
      _log.shout(error, StackTrace.current);
    }
  }
}
