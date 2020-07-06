import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/crud/prefrence/preference_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/ui/authentication/authentication.dart';
import 'package:j3enterprise/src/ui/preferences/preference_detail.dart';

class PreferencesPage extends StatelessWidget {
  static final route = '/preferences';
  var db;
  ScrollController _scrollController = new ScrollController();
  PreferenceDao preferenceDao;
  PreferencesPage() {
    db = AppDatabase();
    preferenceDao = PreferenceDao(db);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        BlocProvider.of<AuthenticationBloc>(context)
            .add(PushNotification(route: 'home'));
        return Future(() => true);
      },
      child: Scaffold(
        appBar: AppBar(
          //ToDo add translation for preferences title
          title: Text(
              AppLocalization.of(context).translate('preferences_title') ??
                  "Preferences"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Icon(
                Icons.wifi,
                color: Colors.greenAccent,
              ),
            ),
          ],
        ),
        body: StreamBuilder(
            stream: preferenceDao.watchAllPreferences(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<PreferenceData> prefData;
                prefData = snapshot.data;
                //  print(prefData[1]);
                if (prefData.isEmpty) {
                  return Center(
                    child: Text(
                      "No Settings Found",
                      style: TextStyle(fontSize: 25),
                    ),
                  );
                  //ToDo do translation
                }
                return ListView.separated(
                    itemCount: prefData.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => PreferenceDetailPage(
                                        prefData[index].code)));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      prefData[index].code.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(prefData[index]
                                        .preferenceName
                                        .toString()),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 33,
                                      child: Switch(
                                          value: prefData[index].value == 'No'
                                              ? false
                                              : true,
                                          onChanged: null),
                                    ),
                                    Text(
                                        "Expired Date: ${prefData[index].expiredDateTime.year}-${prefData[index].expiredDateTime.month}-${prefData[index].expiredDateTime.day}"),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        height: 2,
                      );
                    });
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}
