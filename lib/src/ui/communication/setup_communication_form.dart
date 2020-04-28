import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/widgets/dropdown_box.dart';
import 'package:j3enterprise/src/resources/shared/widgets/password_field.dart';
import 'package:j3enterprise/src/resources/shared/widgets/text_field_nullable.dart';
import 'package:moor/moor.dart' as moor;

import 'bloc/communication_bloc.dart';

class SetupCommunicationForm extends StatefulWidget {
  @override
  State<SetupCommunicationForm> createState() => _SetupCommunicationForm();
}

class _SetupCommunicationForm extends State<SetupCommunicationForm> {
  final formKey = new GlobalKey<FormState>();

  //Drop down setting
  var erpSelecteditem;
  var syncfrequencySelectedItem;
  var syncApifrequencySelectedItem;
  final String erpConnection = 'ERP';
  final String apiConnection = 'API';

  //Form field
  final _serverurlController = TextEditingController();
  final _usernameController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _apiserverurlController = TextEditingController();
  final _apiusernameController = TextEditingController();
  final _apiConfirmPasswordController = TextEditingController();

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

  _onUpdateeApiFrequencySelection(String value) {
    setState(() {
      syncApifrequencySelectedItem = value;
    });
  }
  //API comeunication Setting

  Future<void> submitERPTab(CommunicationBloc bloc) async {
    var formData = CommunicationCompanion(
      serverurl: moor.Value(_serverurlController.value.text),
      username: moor.Value(_usernameController.value.text),
      confirmpasskey: moor.Value(_confirmpasswordController.value.text),
      syncfrequency: moor.Value(syncfrequencySelectedItem),
      typeoferp: moor.Value(erpSelecteditem),
      communicationtype: moor.Value(erpConnection),
    );

    var event = SaveCammunicationButtonPressed(data: formData);
    bloc.add(event);
  }

  Future<void> submitAPITab(CommunicationBloc bloc) async {
    var formData = CommunicationCompanion(
      serverurl: moor.Value(_apiserverurlController.value.text),
      username: moor.Value(_apiusernameController.value.text),
      confirmpasskey: moor.Value(_apiConfirmPasswordController.value.text),
      syncfrequency: moor.Value(syncApifrequencySelectedItem),
      communicationtype: moor.Value(apiConnection),
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
                        padding: const EdgeInsets.all(0.00),
                        child: DropdownFormFieldNormalReuse(
                          _onUpdateERBSelection,
                          hintText: AppLocalization.of(context)
                              .translate('type_of_erp_label_communication'),
                          selectedValue: erpSelecteditem,
                          listData: ['SAP', 'ERP Next', 'Quick Books'],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(0.00),
                      child: TextFromFieldNullableReusable(
                        labelName: AppLocalization.of(context)
                            .translate('server_url_label_communication'),
                        controllerName: _serverurlController,
                        validationText: 'Test',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.00),
                      child: TextFromFieldNullableReusable(
                        labelName: AppLocalization.of(context)
                            .translate('username_label_communication'),
                        controllerName: _usernameController,
                        validationText: 'Test',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.00),
                      child: TextFromFieldPasswordReusable(
                        labelName: AppLocalization.of(context)
                            .translate('new_password_label_communication'),
                        validationText: 'Test',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.00),
                      child: TextFromFieldPasswordReusable(
                        labelName: AppLocalization.of(context)
                            .translate('confirm_password_label_communication'),
                        controllerName: _confirmpasswordController,
                        validationText: 'Test',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.00),
                      child: DropdownFormFieldNormalReuse(
                        _onUpdateeFrequencySelection,
                        hintText: AppLocalization.of(context)
                            .translate('sync_frequency_label_communication'),
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
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(0.00),
                      child: TextFromFieldNullableReusable(
                        labelName: AppLocalization.of(context)
                            .translate('server_url_label_communication'),
                        controllerName: _apiserverurlController,
                        validationText: 'Test',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.00),
                      child: TextFromFieldNullableReusable(
                        labelName: AppLocalization.of(context)
                            .translate('username_label_communication'),
                        controllerName: _apiusernameController,
                        validationText: 'Test',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.00),
                      child: TextFromFieldPasswordReusable(
                        labelName: AppLocalization.of(context)
                            .translate('new_password_label_communication'),
                        validationText: 'Test',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.00),
                      child: TextFromFieldPasswordReusable(
                        labelName: AppLocalization.of(context)
                            .translate('confirm_password_label_communication'),
                        controllerName: _apiConfirmPasswordController,
                        validationText: 'Test',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.00),
                      child: DropdownFormFieldNormalReuse(
                        _onUpdateeApiFrequencySelection,
                        hintText: AppLocalization.of(context)
                            .translate('sync_frequency_label_communication'),
                        selectedValue: syncApifrequencySelectedItem,
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
                            submitAPITab(bloc);
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
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
