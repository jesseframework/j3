import 'package:flutter/material.dart';
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/widgets/dropdown_width.dart';
import 'package:j3enterprise/src/resources/shared/widgets/normal_width.dart';

class SetupCommunication extends StatefulWidget {
  @override
  _SetupCommunicationState createState() => _SetupCommunicationState();
}

class _SetupCommunicationState extends State<SetupCommunication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
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
                  text: AppLocalization.of(context).translate('tab_communication_communication'),
                ),
                Tab(
                  icon: Icon(CustomIcons.cog_regular),
                  text:  AppLocalization.of(context).translate('tab_api_communication'),
                ),
              ],
            ),
            title: Text(AppLocalization.of(context).translate('title_communication')),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.stop,
                      size: 36,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.sync,
                      size: 28,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.file_download,
                      size: 28,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.lock_open,
                      size: 28,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              //Communications tab content
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    DropDownWidth(
                      name: AppLocalization.of(context).translate('type_of_erp_label_communication'),
                      list: 'ERP Next',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    NormalWidth(name: AppLocalization.of(context).translate('server_url_label_communication'), type: 'u'),
                    SizedBox(
                      height: 20,
                    ),
                    NormalWidth(name: AppLocalization.of(context).translate('username_label_communication'), type: 'u'),
                    SizedBox(
                      height: 20,
                    ),
                    NormalWidth(name: AppLocalization.of(context).translate('new_password_label_communication'), type: 'p'),
                    SizedBox(
                      height: 20,
                    ),
                    NormalWidth(name: AppLocalization.of(context).translate('confirm_password_label_communication'), type: 'p'),
                    SizedBox(
                      height: 20,
                    ),
                    DropDownWidth(
                      name: AppLocalization.of(context).translate('sync_frequency_label_communication'),
                      list: 'Daily',
                    ),
                  ],
                ),
              ),
              //API tab content
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  NormalWidth(name: AppLocalization.of(context).translate('server_url_label_communication'), type: 'u'),
                  SizedBox(
                    height: 20,
                  ),
                  NormalWidth(name: AppLocalization.of(context).translate('username_label_communication'), type: 'u'),
                  SizedBox(
                    height: 20,
                  ),
                  NormalWidth(name: AppLocalization.of(context).translate('new_password_label_communication'), type: 'p'),
                  SizedBox(
                    height: 20,
                  ),
                  NormalWidth(name: AppLocalization.of(context).translate('confirm_password_label_communication'), type: 'p'),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}




