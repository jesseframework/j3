import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';

import 'bloc/communication_bloc.dart';

class SetupCommunicationForm extends StatefulWidget {
  @override
  State<SetupCommunicationForm> createState() => _SetupCommunicationForm();
}

class _SetupCommunicationForm extends State<SetupCommunicationForm> {
  final formKey = new GlobalKey<FormState>();

  //Drop down setting
  var _erp_selecteditem;
  var _syncfrequency_selected_item;
  var _erptype = ['SAP', 'ERP Next', 'Quick Books'];
  var _syncfrequency = [
    'Every Minet',
    'Every 5 Minutes',
    'Every 20 Minutes',
    'Every Day',
    'Every Month',
    'Every Year'
  ];

  //ERP Communication setting
  final _typeoferpController = TextEditingController();
  final _serverurlController = TextEditingController();
  final _usernameController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  //final _syncfrequncyController = TextEditingController();

  //API comeunication Setting

  void submitForm(CommunicationBloc bloc) {
    var formData = ComssetData(
      id: 0,
      serverurl: "http",
      username: "testflutter",
      newpasskey: "123hhh",
      confirmpasskey: "667788",
      syncfrequency: "daily",
      typeoferp: "erp",
      commtype: _typeoferpController.value.text,
    );

    var event = SaveCammunicationButtonPressed(data: formData);
    bloc.add(event);
  }

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<CommunicationBloc>(context);

    return Form(
      key: formKey,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.chevron_left),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(CustomIcons.wrench_solid),
                  text: AppLocalization.of(context)
                      .translate('tab_communication_communication'),
                ),
                Tab(
                  icon: Icon(CustomIcons.cog_regular),
                  text: AppLocalization.of(context)
                      .translate('tab_api_communication'),
                )
              ],
            ),
            title: Text(
                AppLocalization.of(context).translate('title_communication')),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.file_download, size: 40, color: Colors.yellow),
                  ],
                ),
              )
            ],
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 10.00, right: 10.00),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(),
                          hint: Text(AppLocalization.of(context)
                              .translate('type_of_erp_label_communication')),
                          value: _erp_selecteditem,
                          onChanged: (String newValue) {
                            setState(() {
                              _erp_selecteditem = newValue;
                            });
                          },
                          items: _erptype.map((String dropDownStringItem) {
                            return new DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: new Text(
                                dropDownStringItem,
                                style: new TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                          isExpanded: true,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.00, right: 10.00),
                      child: TextFormField(
                        controller: _serverurlController,
                        validator: (_value) {
                          return _value.length < 3
                              ? AppLocalization.of(context)
                                  .translate('username_validation_text')
                              : null;
                        },
                        decoration: InputDecoration(
                          //icon: Icon(Icons.supervised_user_circle),
                          labelText: AppLocalization.of(context)
                              .translate('server_url_label_communication'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.00, right: 10.00),
                      child: TextFormField(
                        controller: _usernameController,
                        validator: (_value) {
                          return _value.length < 3
                              ? AppLocalization.of(context)
                                  .translate('username_validation_text')
                              : null;
                        },
                        decoration: InputDecoration(
                          //icon: Icon(Icons.supervised_user_circle),
                          labelText: AppLocalization.of(context)
                              .translate('username_label_communication'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.00, right: 10.00),
                      child: TextFormField(
                        //ontroller: ,
                        validator: (_value) {
                          return _value.length < 3
                              ? AppLocalization.of(context)
                                  .translate('username_validation_text')
                              : null;
                        },
                        decoration: InputDecoration(
                          //icon: Icon(Icons.supervised_user_circle),
                          labelText: AppLocalization.of(context)
                              .translate('new_password_label_communication'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.00, right: 10.00),
                      child: TextFormField(
                        controller: _confirmpasswordController,
                        validator: (_value) {
                          return _value.length < 3
                              ? AppLocalization.of(context)
                                  .translate('username_validation_text')
                              : null;
                        },
                        decoration: InputDecoration(
                          //icon: Icon(Icons.supervised_user_circle),
                          labelText: AppLocalization.of(context).translate(
                              'confirm_password_label_communication'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.00, right: 10.00),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(),
                        hint: Text(AppLocalization.of(context)
                            .translate('sync_frequency_label_communication')),
                        value: _syncfrequency_selected_item,
                        onChanged: (String newValue) {
                          setState(() {
                            _syncfrequency_selected_item = newValue;
                          });
                        },
                        items: _syncfrequency.map((String dropDownStringItem) {
                          return new DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: new Text(
                              dropDownStringItem,
                              style: new TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        isExpanded: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 10.00),
                      child: ButtonTheme(
                        height: 50,
                        child: FlatButton(
                          color: Colors.green[400],
                          onPressed: () {
                            submitForm(bloc);
                          },
                          child: Center(
                              child: Text(
                            AppLocalization.of(context)
                                .translate('save_changes_button_serversetup'),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  //ToDo Implemet texteditor for API
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
