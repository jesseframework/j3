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

import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/widgets/dropdown_box.dart';
import 'package:j3enterprise/src/resources/shared/widgets/password_field.dart';
import 'package:j3enterprise/src/resources/shared/widgets/text_field_nullable.dart';
import 'package:j3enterprise/src/ui/communication/bloc/communication_bloc.dart';
import 'package:moor/moor.dart' as moor;

class CommunicationTabOneWidget extends StatefulWidget {
  const CommunicationTabOneWidget({
    Key key,
  }) : super(key: key);

  @override
  _CommunicationTabOneWidgetState createState() =>
      _CommunicationTabOneWidgetState();
}

class _CommunicationTabOneWidgetState extends State<CommunicationTabOneWidget> {
  final formKey = new GlobalKey<FormState>();

  var erpSelecteditem;
  var syncfrequencySelectedItem;
  var _serverurlController = TextEditingController();
  var _usernameController = TextEditingController();
  var _confirmpasswordController = TextEditingController();
  final String erpConnection = 'ERP';

  _onUpdateERBSelection(String value) {
    setState(() {
      erpSelecteditem = value;
    });
  }

  _onUpdateeFrequencySelection(String value) {
    setState(() {
      syncfrequencySelectedItem = value;
    });
  }

  Future<void> submitERPTab(CommunicationBloc bloc) async {
    formKey.currentState.validate();

    final plainText = _confirmpasswordController.value.text;
    final key = encrypt.Key.fromUtf8('88yencbsgtTYOL98wsabzpmaXXzduerp');
    final iv = encrypt.IV.fromLength(16);

    final encrypter = encrypt.Encrypter(encrypt.AES(key));

    final encrypted = encrypter.encrypt(plainText, iv: iv);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);

    var formData = CommunicationCompanion(
      serverUrl: moor.Value(_serverurlController.value.text),
      userName: moor.Value(_usernameController.value.text),
      confirmPasskey: moor.Value(encrypted.base64),
      syncFrequency: moor.Value(syncfrequencySelectedItem),
      typeofErp: moor.Value(erpSelecteditem),
      communicationType: moor.Value(erpConnection),
    );

    var createEvent = SaveCommunicationButtonPressed(data: formData);
    if (_communicationData != null) {
      var updateEvent = UpdateERPCommunicationButtonPressed(data: formData);
      bloc.add(updateEvent);
    } else {
      bloc.add(createEvent);
    }
  }

  List<CommunicationData> _communicationData;
  final erpList = ['SAP', 'ERP Next', 'Quick Books'];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return CommunicationBloc();
      },
      child: BlocConsumer<CommunicationBloc, CommunicationState>(
        listener: (context, state) {
          // TODO show loader if needed
        },
        buildWhen: (previous, current) {
          var wasLoading = previous is CommunicationLoading;
          return wasLoading;
        },
        builder: (context, state) {
          var bloc = BlocProvider.of<CommunicationBloc>(context);
          // check what state we are in
          if (state is CommunicationLoadSuccess) {
            // if data was loaded set it
            _communicationData = state.data;
            _setupControllers();
          } else if (_communicationData == null) {
            // else if data is not present retrieve it
            var event = OnFormLoadGetSaveCommunication(
                communicationType: erpConnection);
            bloc.add(event);
          }

          // return form
          return _buildForm(bloc);
        },
      ),
    );
  }

  void _setupControllers() {
    if (_communicationData != null && _communicationData.length > 0) {
      _serverurlController =
          TextEditingController(text: _communicationData[0].serverUrl);
      _usernameController =
          TextEditingController(text: _communicationData[0].userName);
      _confirmpasswordController =
          TextEditingController(text: _communicationData[0].confirmPasskey);

      erpSelecteditem = _communicationData[0].typeofErp;
      syncfrequencySelectedItem = _communicationData[0].syncFrequency;
    }
  }

  Widget _buildForm(CommunicationBloc bloc) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(0.00),
                child: DropdownFormFieldNormalReuse(
                  _onUpdateERBSelection,
                  hintText: AppLocalization.of(context)
                          .translate('type_of_erp_label_communication') ??
                      'Type of ERP',
                  selectedValue: erpSelecteditem,
                  listData: erpList,
                )),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: TextFromFieldNullableReusable(
                fieldDecoration: InputDecoration(
                  labelText: AppLocalization.of(context)
                          .translate('server_url_label_communication') ??
                      'Server Url',
                ),
                controllerName: _serverurlController,
                validationText: 'Test',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: TextFromFieldNullableReusable(
                fieldDecoration: InputDecoration(
                  labelText: AppLocalization.of(context)
                          .translate('username_label_communication') ??
                      'Username',
                ),
                controllerName: _usernameController,
                validationText: 'Test',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: TextFromFieldPasswordReusable(
                fieldDecoration: InputDecoration(
                  labelText: AppLocalization.of(context)
                          .translate('new_password_label_communication') ??
                      'New Password',
                ),
                validationText: 'Test',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: TextFromFieldPasswordReusable(
                fieldDecoration: InputDecoration(
                  labelText: AppLocalization.of(context)
                          .translate('confirm_password_label_communication') ??
                      'Confirm Password',
                ),
                controllerName: _confirmpasswordController,
                validationText: 'Test',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: DropdownFormFieldNormalReuse(
                _onUpdateeFrequencySelection,
                hintText: AppLocalization.of(context)
                        .translate('sync_frequency_label_communication') ??
                    'Sync Frequency',
                selectedValue: syncfrequencySelectedItem,
                listData: [
                  'Every Minet',
                  'Every 5 Minutes',
                  'Every 20 Minutes',
                  'Every Day',
                  'Every Month',
                  'Every Year'
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.00),
              child: ButtonTheme(
                height: 50,
                child: FlatButton(
                  color: Colors.green[400],
                  onPressed: () {
                    submitERPTab(bloc);
                  },
                  child: Center(
                      child: Text(
                    AppLocalization.of(context)
                            .translate('save_changes_button_serversetup') ??
                        'Save Changes',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
