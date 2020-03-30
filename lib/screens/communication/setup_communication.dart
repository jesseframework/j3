import 'package:flutter/material.dart';
import 'package:j3enterprise/shared/icons/custom_icons.dart';

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
                  text: 'Communication',
                ),
                Tab(
                  icon: Icon(CustomIcons.cog_regular),
                  text: 'API',
                ),
              ],
            ),
            title: Text('Setup Communication'),
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
                    DropWid(
                      name: 'Type of ERP',
                      list: 'ERP Next',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    NormWid(name: 'Server Url', type: 'u'),
                    SizedBox(
                      height: 20,
                    ),
                    NormWid(name: 'Username', type: 'u'),
                    SizedBox(
                      height: 20,
                    ),
                    NormWid(name: 'New Password', type: 'p'),
                    SizedBox(
                      height: 20,
                    ),
                    NormWid(name: 'Confirm Password', type: 'p'),
                    SizedBox(
                      height: 20,
                    ),
                    DropWid(
                      name: 'Sync Frequency',
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
                  NormWid(name: 'Server Url', type: 'u'),
                  SizedBox(
                    height: 20,
                  ),
                  NormWid(name: 'Username', type: 'u'),
                  SizedBox(
                    height: 20,
                  ),
                  NormWid(name: 'New Password', type: 'p'),
                  SizedBox(
                    height: 20,
                  ),
                  NormWid(name: 'Confirm Password', type: 'p'),
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

class DropWid extends StatefulWidget {
  final name, list;

  DropWid({this.name, this.list});

  @override
  _DropWidState createState() => _DropWidState();
}

class _DropWidState extends State<DropWid> {
  String selecteditem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(widget.name),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DropdownButton(
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  selecteditem = value;
                });
              },
              value: selecteditem,
              items: [
                DropdownMenuItem(
                  child: Text('None'),
                  value: 'None',
                ),
                DropdownMenuItem(
                  child: Text(widget.list),
                  value: widget.list,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NormWid extends StatelessWidget {
  final name, type;

  NormWid({this.name, this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(name),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              obscureText: (type == 'u') ? false : true,
            ),
          )
        ],
      ),
    );
  }
}
