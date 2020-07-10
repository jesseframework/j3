import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/crud/prefrence/preference_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/ui/authentication/authentication.dart';
import 'package:j3enterprise/src/ui/preferences/preference_detail.dart';

class PreferencesPage extends StatefulWidget {
  static final route = '/preferences';
  var db;
  PreferenceDao preferenceDao;
  PreferencesPage() {
    db = AppDatabase();
    preferenceDao = PreferenceDao(db);
  }
  @override
  _PreferencesPageState createState() => _PreferencesPageState();
}

class _PreferencesPageState extends State<PreferencesPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        BlocProvider.of<AuthenticationBloc>(context)
            .add(PushNotification(route: 'home'));
        return Future(() => true);
      },
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.black54,
                    ),
                    Icon(
                      Icons.filter_list,
                      size: 40,
                      color: Colors.black54,
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
              ),
              StreamBuilder(
                  stream: widget.preferenceDao.watchAllPreferences(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<PreferenceData> prefData = snapshot.data;
                      List<String> groupsCollection = List<String>();
                      prefData.forEach((element) {
                        if (!groupsCollection.contains(element.groups)) {
                          groupsCollection.add(element.groups);
                        }
                      });
                      if (prefData.isEmpty) {
                        return Center(
                          child: Text(
                            "No Preference Foud",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black45,
                                fontWeight: FontWeight.w800,
                                fontSize: 25),
                          ),
                        );
                      }
                      return Expanded(
                        child: ListView.builder(
                            itemCount: groupsCollection.length,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 8),
                                    child: Text(
                                      groupsCollection[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.black45),
                                    ),
                                  ),
                                  Container(
                                      child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              elevation: 1,
                                              child: Column(children: [
                                                ...prefData.map((e) {
                                                  if (e.groups ==
                                                      groupsCollection[index]) {
                                                    return InkWell(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    PreferenceDetailPage(
                                                                        e.code)));
                                                      },
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 10,
                                                                horizontal: 5),
                                                        child: Container(
                                                            height: 50,
                                                            child: Column(
                                                                children: [
                                                                  Row(
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Column(children: [
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  e.preferenceName,
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black45),
                                                                                ),
                                                                                Expanded(child: Container()),
                                                                                Text(
                                                                                  e.value,
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: e.value == 'OFF' ? Colors.red : Colors.green),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              children: [
                                                                                Text(
                                                                                  e.description,
                                                                                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black45),
                                                                                ),
                                                                              ],
                                                                            )
                                                                          ]),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(5.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.arrow_forward_ios,
                                                                            color:
                                                                                Colors.black54,
                                                                            size:
                                                                                30,
                                                                          ),
                                                                        )
                                                                      ]),
                                                                ])),
                                                      ),
                                                    );
                                                  } else {
                                                    return Container();
                                                  }
                                                }),
                                              ])))),
                                ],
                              );
                            }),
                      ); //                       return SingleChildScrollView(

                    }
                    return Expanded(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }),
            ]),
      ),
    );
  }
}
