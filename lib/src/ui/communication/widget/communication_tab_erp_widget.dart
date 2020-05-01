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
    var formData = CommunicationCompanion(
      serverUrl: moor.Value(_serverurlController.value.text),
      userName: moor.Value(_usernameController.value.text),
      confirmPasskey: moor.Value(_confirmpasswordController.value.text),
      syncFrequency: moor.Value(syncfrequencySelectedItem),
      typeofErp: moor.Value(erpSelecteditem),
      communicationType: moor.Value(erpConnection),
    );

    var event = SaveCommunicationButtonPressed(data: formData);
    bloc.add(event);
  }

  List<CommunicationData> _communicationData;

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<CommunicationBloc>(context);

    return BlocConsumer<CommunicationBloc, CommunicationState>(
      listener: (context, state) {
        // TODO show loader if needed
      },
      buildWhen: (previous, current) {
        var wasLoading = previous is CommunicationLoading;
        return wasLoading;
      },
      builder: (context, state) {
        // check what state we are in
        if (state is CommunicationLoadSuccess) {
          // if data was loaded set it
          _communicationData = state.data;
          _setupControllers();
        } else if (_communicationData == null) {
          // else if data is not present retrieve it
          var event =
              OnFormLoadGetSaveCommunication(communicationType: erpConnection);
          bloc.add(event);
        }

        // return form
        return _buildForm(bloc);
      },
    );
  }

  void _setupControllers() {
    if (_communicationData != null) {
      _serverurlController =
          TextEditingController(text: _communicationData[0].serverUrl);
      _usernameController =
          TextEditingController(text: _communicationData[0].userName);
      _confirmpasswordController =
          TextEditingController(text: _communicationData[0].confirmPasskey);
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
                  listData: ['SAP', 'ERP Next', 'Quick Books'],
                )),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: TextFromFieldNullableReusable(
                labelName: AppLocalization.of(context)
                        .translate('server_url_label_communication') ??
                    'Server Url',
                controllerName: _serverurlController,
                validationText: 'Test',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: TextFromFieldNullableReusable(
                labelName: AppLocalization.of(context)
                        .translate('username_label_communication') ??
                    'Username',
                controllerName: _usernameController,
                validationText: 'Test',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: TextFromFieldPasswordReusable(
                labelName: AppLocalization.of(context)
                        .translate('new_password_label_communication') ??
                    'New Password',
                validationText: 'Test',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: TextFromFieldPasswordReusable(
                labelName: AppLocalization.of(context)
                        .translate('confirm_password_label_communication') ??
                    'Confirm Password',
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
