import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/crud/prefrence/preference_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/ui/authentication/authentication.dart';

class PreferencesPage extends StatefulWidget {
  static final route = '/preferences';
  var db;
  PreferenceDao preferenceDao;
  PreferencesPage() {
    db = AppDatabase();
    preferenceDao = PreferenceDao(db);
  }
  @override
  _PreferencesPageState createState() => _PreferencesPageState();
}

class _PreferencesPageState extends State<PreferencesPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        BlocProvider.of<AuthenticationBloc>(context)
            .add(PushNotification(route: 'home'));
        return Future(() => true);
      },
      child: Scaffold(
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
        body: StreamBuilder(
            stream: widget.preferenceDao.watchAllPreferences(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.toString());
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }),
        //        body: SingleChildScrollView(
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Padding(
//                padding: const EdgeInsets.only(left: 24.0, top: 16),
//                child: Text(
//                  'Login Validations',
//                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                ),
//              ),
//              LTile('Enable/Disable case sensitivity'),
//              LTile('Enable/Disable password remainder'),
//              LTile('Enable/Disable password history(prevent reuse)'),
//              LTile('Enable/Disable Two Factor Authentication(2FA)'),
//              LTile(
//                  'Enable/Disable open authentication for Office 365, Google, Facebook, Twitter'),
//              LTile(
//                  'Enable/Disable enterprise support for windows active directory'),
//              DropWid(
//                name: 'Set regular expression for password strength',
//                list: 'alpha-numeric',
//              ),
//              Counter1('Set password age', 'days'),
//              Counter1(
//                  'Block user if attempt exceeds-(IP address should also be blacklisted',
//                  'tries'),
//              Counter2('Set min/max length for username'),
//              Counter2('Set min/max length for password'),
//              SizedBox(
//                height: 40,
//              )
//            ],
//          ),
//        ),
      ),
    );
  }
}

class LTile extends StatefulWidget {
  final String name;
  LTile(this.name);

  @override
  _LTileState createState() => _LTileState();
}

class _LTileState extends State<LTile> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SwitchListTile(
        title: Text(widget.name),
        value: val,
        onChanged: (val) {
          setState(() {
            val = true;
          });
        },
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
  String selecteditem = 'alpha-numeric';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              widget.name,
              style: TextStyle(fontSize: 16),
            ),
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
                  child: Text('numeric'),
                  value: 'numeric',
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

class Counter1 extends StatefulWidget {
  final String title, extra;
  Counter1(this.title, this.extra);

  @override
  _Counter1State createState() => _Counter1State();
}

class _Counter1State extends State<Counter1> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 16),
            ),
          ),
          _itemCount != 0
              ? new IconButton(
                  icon: new Icon(Icons.remove),
                  onPressed: () => setState(() => _itemCount--),
                )
              : new Container(),
          Text(
            _itemCount.toString(),
            style: TextStyle(fontSize: 16),
          ),
          IconButton(
              icon: new Icon(Icons.add),
              onPressed: () => setState(() => _itemCount++)),
          Text(
            widget.extra,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class Counter2 extends StatefulWidget {
  final String title;
  Counter2(this.title);

  @override
  _Counter2State createState() => _Counter2State();
}

class _Counter2State extends State<Counter2> {
  int _itemCount = 0;
  int _itemCount2 = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 16),
            ),
          ),
          _itemCount != 0
              ? new IconButton(
                  icon: new Icon(Icons.remove),
                  onPressed: () => setState(() => _itemCount--),
                )
              : new Container(),
          Text(
            _itemCount.toString(),
            style: TextStyle(fontSize: 16),
          ),
          IconButton(
              icon: new Icon(Icons.add),
              onPressed: () => setState(() => _itemCount++)),
          _itemCount2 != 0
              ? new IconButton(
                  icon: new Icon(Icons.remove),
                  onPressed: () => setState(() => _itemCount2--),
                )
              : new Container(),
          Text(
            _itemCount2.toString(),
            style: TextStyle(fontSize: 16),
          ),
          IconButton(
              icon: new Icon(Icons.add),
              onPressed: () => setState(() => _itemCount2++)),
        ],
      ),
    );
  }
}
