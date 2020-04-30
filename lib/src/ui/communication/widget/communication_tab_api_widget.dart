import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/widgets/dropdown_box.dart';
import 'package:j3enterprise/src/resources/shared/widgets/password_field.dart';
import 'package:j3enterprise/src/resources/shared/widgets/text_field_nullable.dart';
import 'package:j3enterprise/src/ui/communication/bloc/communication_bloc.dart';

import 'package:moor/moor.dart' as moor;

class CommunicationTabTwoWidget extends StatefulWidget {
  @override
  _CommunicationTabTwoWidgetState createState() =>
      _CommunicationTabTwoWidgetState();
}

class _CommunicationTabTwoWidgetState extends State<CommunicationTabTwoWidget> {
  final formKey = new GlobalKey<FormState>();

  //Drop down setting
  var syncApifrequencySelectedItem;
  final String apiConnection = 'API';

  //Form field
  var _apiserverurlController = TextEditingController();
  var _apiusernameController = TextEditingController();
  var _apiConfirmPasswordController = TextEditingController();

  _onUpdateeApiFrequencySelection(String value) {
    setState(() {
      syncApifrequencySelectedItem = value;
    });
  }

  //API comeunication Setting
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
              OnFormLoadGetSaveCommunication(communicationType: apiConnection);
          bloc.add(event);
        }

        // return form
        return _buildForm(bloc);
      },
    );
  }

  void _setupControllers() {
    if (_communicationData != null) {
      _apiserverurlController =
          TextEditingController(text: _communicationData[0].serverurl);
      _apiusernameController =
          TextEditingController(text: _communicationData[0].username);
      _apiConfirmPasswordController =
          TextEditingController(text: _communicationData[0].confirmpasskey);
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
              child: TextFromFieldNullableReusable(
                labelName: AppLocalization.of(context)
                        .translate('server_url_label_communication') ??
                    'Server Url',
                controllerName: _apiserverurlController,
                validationText: 'Test',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: TextFromFieldNullableReusable(
                labelName: AppLocalization.of(context)
                        .translate('username_label_communication') ??
                    'Username',
                controllerName: _apiusernameController,
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
                controllerName: _apiConfirmPasswordController,
                validationText: 'Test',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.00),
              child: DropdownFormFieldNormalReuse(
                _onUpdateeApiFrequencySelection,
                hintText: AppLocalization.of(context)
                        .translate('sync_frequency_label_communication') ??
                    'Sync Frequency',
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
