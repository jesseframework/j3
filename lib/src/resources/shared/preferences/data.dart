//import 'package:shared_preferences/shared_preferences.dart';
//
//class PrefData{
//  Future<bool> saveApiToken(String token) async{
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    prefs.setString("token", token);
//    return prefs.commit();
//  }
//
//  Future<String> getApiToken() async{
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    String token = prefs.getString("token");
//    return token;
//  }
//}
