/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 */


import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j3enterprise/src/database/crud/business_rule/business_rule_crud.dart';
import 'package:j3enterprise/src/database/crud/business_rule/non_global_business_rule_crud.dart';

import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/colors/my_color.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:xlive_switch/xlive_switch.dart';

class BussinessRuleDetailPage extends StatefulWidget {
  final code;
  BusinessRuleDao businessRuleDao;
  NonGlobalBusinessRuleDao nonGlobalBusinessRuleDao;
  BussinessRuleDetailPage(this.code) {
    db = AppDatabase();
    nonGlobalBusinessRuleDao = NonGlobalBusinessRuleDao(db);
    businessRuleDao = BusinessRuleDao(db);
  }
  var db;

  @override
  _BussinessRuleDetailPageState createState() =>
      _BussinessRuleDetailPageState();
}

class _BussinessRuleDetailPageState extends State<BussinessRuleDetailPage> {
  TextEditingController _textFieldController = TextEditingController();
  String selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JasseColors.BackgroundColor,
      appBar: AppBar(
        //ToDo add translation for preferences title
        title: Text(
            AppLocalization.of(context).translate('preferences_title') ??
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
      body: Container(
          child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(
                  "Edit Bussiness Rule",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ),
              StreamBuilder(
                  stream: widget.businessRuleDao
                      .watchSingleBussinessRule(widget.code),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      BusinessRuleData businessRuleData;
                      businessRuleData = snapshot.data;

                      //  print(prefData[1]);
                      return Container(
                        height: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          elevation: 4.0,
                          //  height: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Name',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black45,
                                          fontSize: 16),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 5),
                                      child: Text(
                                        businessRuleData.ruleName,
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
                                    Text(
                                      'Is Global',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black45,
                                          fontSize: 16),
                                    ),
                                    Container(
                                      child: XlivSwitch(
                                          value:
                                              businessRuleData.isGlobalRule ==
                                                      false
                                                  ? false
                                                  : true,
                                          onChanged: (value) async {
                                            await widget.businessRuleDao
                                                .updateBussinessRule(
                                                    businessRuleData.copyWith(
                                              isGlobalRule: value,
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
                                        child: businessRuleData.dataType ==
                                                'Bool'
                                            ? XlivSwitch(
                                                value: businessRuleData.value ==
                                                        'OFF'
                                                    ? false
                                                    : true,
                                                onChanged: (value) async {
                                                  await widget.businessRuleDao
                                                      .updateBussinessRule(
                                                          businessRuleData
                                                              .copyWith(
                                                    value: value == true
                                                        ? 'ON'
                                                        : 'OFF',
                                                  ));
                                                })
//
                                            : businessRuleData.dataType ==
                                                    'Text'
                                                ? Row(
                                                    children: [
                                                      Text(
                                                        businessRuleData.value,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Colors.black45,
                                                            fontSize: 16),
                                                      ),
                                                      InkWell(
                                                        child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 8),
                                                            child: Icon(
                                                                Icons.edit)),
                                                        onTap: () {
                                                          _textFieldController =
                                                              TextEditingController(
                                                                  text: businessRuleData
                                                                      .value);
                                                          _displayDialog(
                                                              context,
                                                              () => widget
                                                                  .businessRuleDao
                                                                  .updateBussinessRule(
                                                                      businessRuleData.copyWith(
                                                                          value:
                                                                              _textFieldController.text)));
                                                        },
                                                      ),
                                                    ],
                                                  )
                                                : FindDropdown(
                                                    onFind: (value) async {
                                                      print(value);
                                                      return businessRuleData
                                                          .dataValue
                                                          .split(',')
                                                          .map((e) => e)
                                                          .toList();
                                                    },
                                                    selectedItem:
                                                        businessRuleData.value,
                                                    showSearchBox: true,
                                                    items: businessRuleData
                                                        .dataValue
                                                        .split(',')
                                                        .map((e) => e)
                                                        .toList(),
                                                    onChanged: (value) async {
                                                      await widget
                                                          .businessRuleDao
                                                          .updateBussinessRule(
                                                              businessRuleData
                                                                  .copyWith(
                                                                      value:
                                                                          value));
                                                    })),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Expiry Date',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black45,
                                          fontSize: 16),
                                    ),
                                    Expanded(child: Container()),
                                    Text(
                                      "${businessRuleData.expiredDateTime.day}-${businessRuleData.expiredDateTime.month}-${businessRuleData.expiredDateTime.year}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black45,
                                          fontSize: 16),
                                    ),
                                    InkWell(
                                        onTap: () async {
                                          var result = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(1970),
                                              lastDate: DateTime(2100));
                                          await widget.businessRuleDao
                                              .updateBussinessRule(
                                                  businessRuleData.copyWith(
                                                      expiredDateTime: result));
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 8),
                                            child: Icon(Icons.calendar_today))),
                                  ],
                                ),
                              ],
                            ),
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
                    stream: widget.nonGlobalBusinessRuleDao
                        .watchAllNonGlobalBussinessRule(widget.code),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<NonGlobalBusinessRuleData>
                            nonGlobalBussinessRuleData;
                        nonGlobalBussinessRuleData = snapshot.data;
                        if (nonGlobalBussinessRuleData.isEmpty) {
                          return Center(
                            child: Text(
                              "No Non-Global Bussiness Rule Found",
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
                          itemCount: nonGlobalBussinessRuleData.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 4.0,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 12),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'DeviceId: ${nonGlobalBussinessRuleData[index].deviceId}',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Container(
                                            //  height: 20,
                                            child: XlivSwitch(
                                                value:
                                                    nonGlobalBussinessRuleData[
                                                                    index]
                                                                .value ==
                                                            'OFF'
                                                        ? false
                                                        : true,
                                                onChanged: (value) async {
                                                  await widget
                                                      .nonGlobalBusinessRuleDao
                                                      .updateNonGlobalBussinessRuleValue(
                                                          nonGlobalBussinessRuleData[
                                                                  index]
                                                              .copyWith(
                                                    value: value == true
                                                        ? 'ON'
                                                        : 'OFF',
                                                  ));
                                                })),
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
                                          'User: ${nonGlobalBussinessRuleData[index].userName.toString()}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black45,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          'Screen: ${nonGlobalBussinessRuleData[index].screen}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black45,
                                              fontSize: 16),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 7),
                                          child: Text(
                                            "${nonGlobalBussinessRuleData[index].expiredDateTime.day}-${nonGlobalBussinessRuleData[index].expiredDateTime.month}-${nonGlobalBussinessRuleData[index].expiredDateTime.year}",
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

  _displayDialog(BuildContext context, callBack) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Option'),
            content: TextField(
              controller: _textFieldController,
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Discard'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('Save'),
                onPressed: () async {
                  await callBack();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
