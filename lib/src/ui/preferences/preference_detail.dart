import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j3enterprise/src/database/crud/prefrence/non_preference_crud.dart';
import 'package:j3enterprise/src/database/crud/prefrence/preference_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:xlive_switch/xlive_switch.dart';

class PreferenceDetailPage extends StatefulWidget {
  final code;
  NonGlobalPreferenceDao nonGlobalPreferenceDao;
  PreferenceDao preferenceDao;
  PreferenceDetailPage(this.code) {
    db = AppDatabase();
    nonGlobalPreferenceDao = NonGlobalPreferenceDao(db);
    preferenceDao = PreferenceDao(db);
  }
  var db;

  @override
  _PreferenceDetailPageState createState() => _PreferenceDetailPageState();
}

class _PreferenceDetailPageState extends State<PreferenceDetailPage> {
  String selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
          child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Edit Preference",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ),
              StreamBuilder(
                  stream:
                      widget.preferenceDao.watchSinglePreferences(widget.code),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      PreferenceData prefData;
                      prefData = snapshot.data;

                      //  print(prefData[1]);
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 4.0,
                        //  height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      'Name',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black45,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    child: Text(
                                      prefData.preferenceName,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black45,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      'Is Global',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black45,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    child: XlivSwitch(
                                        value: prefData.isGlobal == false
                                            ? false
                                            : true,
                                        onChanged: (value) async {
                                          await widget.preferenceDao
                                              .updatePreferenceValue(
                                                  prefData.copyWith(
                                            isGlobal: value,
                                          ));
                                        }),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Option',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black45,
                                        fontSize: 16),
                                  ),
                                  Container(
                                      child: prefData.dataType == 'Bool'
                                          ? XlivSwitch(
                                              value: prefData.value == 'OFF'
                                                  ? false
                                                  : true,
                                              onChanged: (value) async {
                                                await widget.preferenceDao
                                                    .updatePreferenceValue(
                                                        prefData.copyWith(
                                                  value: value == true
                                                      ? 'ON'
                                                      : 'OFF',
                                                ));
                                              })
//
                                          : prefData.dataType == 'Text'
                                              ? Text('Text')
                                              : FindDropdown(
                                                  onFind: (value) async {
                                                    print(value);
                                                    return prefData.dataValue
                                                        .split(',')
                                                        .map((e) => e)
                                                        .toList();
                                                  },
                                                  selectedItem: prefData.value,
                                                  showSearchBox: true,
                                                  items: prefData.dataValue
                                                      .split(',')
                                                      .map((e) => e)
                                                      .toList(),
                                                  onChanged: (value) async {
                                                    await widget.preferenceDao
                                                        .updatePreferenceValue(
                                                            prefData.copyWith(
                                                                value: value));
                                                  })),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: Text(
                                      'Expiry Date',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black45,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    "${prefData.expiredDateTime.day}-${prefData.expiredDateTime.month}-${prefData.expiredDateTime.year}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black45,
                                        fontSize: 16),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10, left: 8),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.black54,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Non-Global",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ),
              Container(
                height: 300,
                child: StreamBuilder(
                    stream: widget.nonGlobalPreferenceDao
                        .watchAllNonGlobalPreferences(widget.code),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<NonGlobalPreferenceData> nonGloblePrefData;
                        nonGloblePrefData = snapshot.data;
                        if (nonGloblePrefData.isEmpty) {
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
                        //  print(prefData[1]);
                        return ListView.builder(
                          itemCount: nonGloblePrefData.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 4.0,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'DeviceId: ${nonGloblePrefData[index].deviceId}',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Container(
                                          height: 20,
                                          child: Switch(
                                              activeTrackColor: Colors.black54,
                                              activeColor: Colors.white,
                                              value: nonGloblePrefData[index]
                                                          .value ==
                                                      'No'
                                                  ? false
                                                  : true,
                                              onChanged: (value) {}),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'User: ${nonGloblePrefData[index].userName.toString()}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black45,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          'Screen: ${nonGloblePrefData[index].screen}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black45,
                                              fontSize: 16),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 15),
                                          child: Text(
                                            "${nonGloblePrefData[index].expiredDateTime.day}-${nonGloblePrefData[index].expiredDateTime.month}-${nonGloblePrefData[index].expiredDateTime.year}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black45,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
