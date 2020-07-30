import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/crud/business_rule/business_rule_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/colors/my_color.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/widgets/circuler_indicator.dart';
import 'package:j3enterprise/src/resources/shared/widgets/no_data_found.dart';
import 'package:j3enterprise/src/resources/shared/widgets/search_bar.dart';
import 'package:j3enterprise/src/ui/authentication/authentication.dart';
import 'package:j3enterprise/src/ui/bussiness_rule/bussiness_rule_detail_page.dart';
import 'package:j3enterprise/src/ui/preferences/preference_detail.dart';

class BussinessRulePage extends StatefulWidget {
  static final route = '/businessrule';
  var db;
  BusinessRuleDao businessRuleDao;
  BussinessRulePage() {
    db = AppDatabase();
    businessRuleDao = BusinessRuleDao(db);
  }
  @override
  _BussinessRulePageState createState() => _BussinessRulePageState();
}

class _BussinessRulePageState extends State<BussinessRulePage> {
  String searchText = '';

  bool searchOn = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JasseColors.backgroundColor,
      appBar: AppBar(
        //ToDo add translation for preferences title
        title: Text(
            AppLocalization.of(context).translate('bussiness_rule_title') ??
                "Bussiness Rule"),
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
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Container(
                    height: 55,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 5),
                      child: Center(
                        child: ListFilter(
                            placeholder: 'Search',
                            filter: searchText,
                            onFilterChanged: (search) {
                              setState(() {
                                searchText = search;
                              });
                            }),
                      ),
                    ))),
            _buildStreamBuilder(),
          ]),
    );
  }

  _buildStreamBuilder() {
    return StreamBuilder(
        stream: widget.businessRuleDao.watchAllBusinessRule(searchText),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<BusinessRuleData> bussinessRuleData = snapshot.data;
            List<String> groupsCollection = List<String>();
            bussinessRuleData.forEach((element) {
              if (!groupsCollection.contains(element.groups)) {
                groupsCollection.add(element.groups);
              }
            });
            if (bussinessRuleData.isEmpty) {
              return BuildOnNoData(
                message: "No Bussiness Rule Found",
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
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            groupsCollection[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black45),
                          ),
                        ),
                        Container(
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    elevation: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(children: [
                                        ...bussinessRuleData.map((e) {
                                          if (e.groups ==
                                              groupsCollection[index]) {
                                            return InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            BussinessRuleDetailPage(
                                                                e.ruleName)));
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10,
                                                        horizontal: 5),
                                                child: Container(
                                                    height: 50,
                                                    child: Column(children: [
                                                      Row(children: [
                                                        Expanded(
                                                          child: Column(
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      e.ruleName,
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              16,
                                                                          color:
                                                                              Colors.black54),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            Container()),
                                                                    Text(
                                                                      e.value,
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              14,
                                                                          color: e.value == 'OFF'
                                                                              ? Colors.red
                                                                              : Colors.green),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Text(
                                                                      e.description,
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize:
                                                                              14,
                                                                          color:
                                                                              Colors.black45),
                                                                    ),
                                                                  ],
                                                                )
                                                              ]),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5.0),
                                                          child: Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            color:
                                                                Colors.black54,
                                                            size: 20,
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
                                      ]),
                                    )))),
                      ],
                    );
                  }),
            ); //                       return SingleChildScrollView(

          }
          return BuildProgressIndicator();
        });
  }
}
