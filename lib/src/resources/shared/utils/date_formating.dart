import 'package:easy_localization/easy_localization.dart';

//ToDo Add more date format from setting

Future<String> formatDate(String dateToConvert) async {
  var now = DateTime.tryParse(dateToConvert);
  var formatter = new DateFormat('yyyy-MM-dd hh:mm:ss');
  String formatted = formatter.format(now);
  return formatted;
}
