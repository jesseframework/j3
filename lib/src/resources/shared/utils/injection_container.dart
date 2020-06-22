import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/ui/authentication/authentication_bloc.dart';
import 'package:j3enterprise/src/ui/login/bloc/login_bloc.dart';
import 'package:kiwi/kiwi.dart';

void initKiwi() {
 
  Container().registerFactory((c) => AppDatabase());
  
}
