import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/main.dart';
import 'package:j3enterprise/src/database/crud/user/user_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/preferences/user_share_data.dart';
import 'package:j3enterprise/src/ui/about/about.dart';
import 'package:j3enterprise/src/ui/app_logger/applogger_page.dart';
import 'package:j3enterprise/src/ui/authentication/authentication.dart';
import 'package:j3enterprise/src/ui/background_jobs/background_jobs.dart';
import 'package:j3enterprise/src/ui/communication/setup_communication_page.dart';
import 'package:j3enterprise/src/ui/profile/profile_page.dart';

class CustomDrawer extends StatefulWidget {
  var db;
  UserDao userDao;
  CustomDrawer() {
    db = AppDatabase();
    userDao = UserDao(db);
  }

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  Future getProfileData() async {

    final data = await UserSharedData().getUserSharedPref();
    final profileData =await
    widget.userDao.getSingleUser(int.parse(data['userId']));

    return profileData;
  }

  User user;
  int userId;

  @override
  void didChangeDependencies() async{
    await getIt<UserRepository>().getUserSharedPref().then((value) {

        if(value==null) {
          print(value);

        }else{
          setState(() {
            userId = int.parse(value['userId']);
          });
        }

    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Theme.of(context).cardColor,
        child: ListView(
          children: <Widget>[
            FutureBuilder(
                future: getProfileData(),
               builder: (context,snapshot){
                   user = snapshot.data;
            return snapshot.hasData?UserAccountsDrawerHeader(

               accountName: Text( user.fullName),
               accountEmail: Text(  user.emailAddress),
               currentAccountPicture: CircleAvatar(
                 // backgroundColor: Theme.of(context).backgroundColor,
                   child: Icon(Icons.person)),
               otherAccountsPictures: <Widget>[
//                 CircleAvatar(
//                   backgroundColor: Theme.of(context).backgroundColor,
//                   child: Text(
//                     "B",
//                   ),
//                 ),
//                 CircleAvatar(
//                   backgroundColor: Theme.of(context).backgroundColor,
//                   child: Text(
//                     "C",
//                   ),
//                 ),
               ],
             ):UserAccountsDrawerHeader(accountName: null, accountEmail: null);
           }),
            // DrawerHeader(
            //   child: Align(
            //       alignment: Alignment.bottomLeft,
            //       child: Row(
            //         children: <Widget>[
            //           Icon(
            //             Icons.settings,
            //             size: 32,
            //             color: Colors.white,
            //           ),
            //           SizedBox(
            //             width: 27,
            //           ),
            //           Text(
            //             AppLocalization.of(context)
            //                     .translate('setting_label_appdraw') ??
            //                 'Setting',
            //             style: TextStyle(
            //                 fontSize: 22,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.white),
            //           ),
            //         ],
            //       )),
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //         colors: [Colors.blueGrey, Colors.blue],
            //         begin: Alignment.topLeft,
            //         end: Alignment.bottomRight),
            //   ),
            // ),
            Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CommunicationPage()));
                },
                child: ListTile(
                  leading: Icon(
                    CustomIcons.wrench_solid,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    AppLocalization.of(context)
                            .translate('set_communication_appdraw') ??
                        'Set Communication',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SetupBackgroundPage()));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.sync,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    AppLocalization.of(context)
                            .translate('background_job_appdraw') ??
                        'Background Jobs',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AppLoggerPage()));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.error_outline,
                   color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    AppLocalization.of(context).translate('applogger_appdraw') ??
                        'App Logger',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
           userId!=null? Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => ProfilePage()));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                     color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    AppLocalization.of(context).translate('profile_appdraw') ??
                        'Profile',
                    // AppLocalization.of(context).translate('language_appdraw') ??
                    //     'Language',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ):Container(),
            Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => About()));
                },
                child: ListTile(
                  leading: Icon(
                    CustomIcons.info_circle_solid,
                     color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    AppLocalization.of(context).translate('about_appdraw') ??
                        'About',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {
                  BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
                },
                child: ListTile(
                  leading: Icon(Icons.exit_to_app,  color: Theme.of(context).primaryColor,),
                  title: Text(
                    AppLocalization.of(context).translate('logout_appdraw') ??
                        'Logout',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 32,
                  ),

                  Text(
                    AppLocalization.of(context).translate('version_appdraw') ??
                        'Version',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Jesseframework 2.1',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'J3 Enterprise Pro 3.1',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
