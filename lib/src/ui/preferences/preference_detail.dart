import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j3enterprise/src/database/crud/prefrence/non_preference_crud.dart';
import 'package:j3enterprise/src/database/crud/prefrence/preference_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';

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
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Preference",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                      return Container(
                        height: 150,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    'Code',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                                Text(widget.code),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Preference Name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Text(prefData.preferenceName),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'IS Global',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Container(
                                  height: 30,
                                  child: Switch(
                                      inactiveThumbColor:
                                          Theme.of(context).primaryColor,
                                      value: prefData.isGlobal == false
                                          ? false
                                          : true,
                                      onChanged: (value) async {
                                        await widget.preferenceDao
                                            .updatePreferenceValue(
                                                PreferenceData(
                                                    expiredDateTime: prefData
                                                        .expiredDateTime,
                                                    description:
                                                        prefData.description,
                                                    domain: prefData.domain,
                                                    id: prefData.id,
                                                    tenantId: prefData.tenantId,
                                                    code: prefData.code,
                                                    value: prefData.value,
                                                    preferenceName:
                                                        prefData.preferenceName,
                                                    isGlobal: value));
                                      }),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Value',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Container(
                                  height: 30,
                                  child: Switch(
                                      inactiveThumbColor:
                                          Theme.of(context).primaryColor,
                                      value:
                                          prefData.value == 'No' ? false : true,
                                      onChanged: (value) async {
                                        await widget.preferenceDao
                                            .updatePreferenceValue(
                                                PreferenceData(
                                                    expiredDateTime: prefData
                                                        .expiredDateTime,
                                                    description: prefData
                                                        .description,
                                                    domain: prefData.domain,
                                                    id: prefData.id,
                                                    tenantId: prefData.tenantId,
                                                    code: prefData.code,
                                                    value:
                                                        value ==
                                                                true
                                                            ? 'Yes'
                                                            : 'No',
                                                    preferenceName:
                                                        prefData.preferenceName,
                                                    isGlobal:
                                                        prefData.isGlobal));
                                      }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Non Globle Preference",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                        //  print(prefData[1]);
                        return ListView.separated(
                            itemCount: nonGloblePrefData.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'DeviceId: ${nonGloblePrefData[index].deviceId}',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                                'User: ${nonGloblePrefData[index].userName.toString()}'),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Screen: ${nonGloblePrefData[index].screen}',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 33,
                                              child: Switch(
                                                  value:
                                                      nonGloblePrefData[index]
                                                                  .value ==
                                                              'No'
                                                          ? false
                                                          : true,
                                                  onChanged: null),
                                            ),
                                            Text(
                                                "Expired Date: ${nonGloblePrefData[index].expiredDateTime.year}-${nonGloblePrefData[index].expiredDateTime.month}-${nonGloblePrefData[index].expiredDateTime.day}"),
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
            ],
          ),
        ),
      )),
    );
  }
}
