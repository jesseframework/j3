import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:j3enterprise/about.dart';
import 'package:j3enterprise/btasks.dart';
import 'package:j3enterprise/customDialogBox.dart';
import 'package:j3enterprise/profile.dart';
import 'package:j3enterprise/setup_communication.dart';
import 'package:j3enterprise/sever_setup.dart';

import 'custom_icons.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched = false;
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: customDrawer(),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/beach-background.jpg'),
              fit: BoxFit.cover,
            )),
            height: double.maxFinite,
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Flexible(
                    child: Center(
                      child: Image(
                        image: AssetImage('images/logo.png'),
                        height: 250,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Flexible(
                    flex: 3,
                    fit: FlexFit.loose,
                    child: Center(
                      child: Wrap(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(240),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.person_outline,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Flexible(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  labelText: "Username"),
                                            ),
                                          )
                                        ]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.lock_outline,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                            child: TextField(
                                              obscureText: pass,
                                              decoration: InputDecoration(
                                                  suffixIcon: IconButton(
                                                      icon: Icon(
                                                        Icons.remove_red_eye,
                                                        color: !pass
                                                            ? Colors.black
                                                            : Colors.grey,
                                                      ),
                                                      onPressed: () {
                                                        setState(() {
                                                          pass = !pass;
                                                        });
                                                      }),
                                                  labelText: "Password"),
                                            ),
                                          ),
                                        ]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.home,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                            child: TextField(
                                              keyboardType: TextInputType
                                                  .numberWithOptions(
                                                      decimal: false,
                                                      signed: false),
                                              decoration: InputDecoration(
                                                  labelText: "Company Code"),
                                            ),
                                          )
                                        ]),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SvgPicture.asset('images/pin.svg'),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                            child: Text(
                                          "Pin Only",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300),
                                        )),
                                        CupertinoSwitch(
                                          value: isSwitched,
                                          onChanged: (value) {
                                            setState(() {
                                              isSwitched = value;
                                              print(isSwitched);
                                            });
                                          },
                                          activeColor: Colors.black,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      color: Colors.blue,
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LandingPage()));
                                      },
                                      child: Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(11.0),
                                        child: Text(
                                          'LOGIN',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      )),
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage('images/g+.png'),
                                            height: 25,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            width: 24,
                                            height: 24,
                                            image: AssetImage(
                                                'images/facebook.png'),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage(
                                                'images/twitter.png'),
                                            height: 25,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                              width: 24,
                                              height: 27,
                                              color: Colors.yellow.shade700,
                                              image:
                                                  AssetImage('images/cogs.png'),
                                              fit: BoxFit.fill),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 18,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget customDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      size: 32,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blueGrey, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SetupCommunication()));
              },
              child: ListTile(
                leading: Icon(
                  CustomIcons.wrench_solid,
                  color: Colors.blue,
                ),
                title: Text(
                  'Setup Communication',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BackgroundTasks()));
              },
              child: ListTile(
                leading: Icon(
                  Icons.sync,
                  color: Colors.blue,
                ),
                title: Text(
                  'Background Jobs',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LocalServer()));
              },
              child: ListTile(
                leading: Icon(
                  CustomIcons.database_solid,
                  color: Colors.blue,
                ),
                title: Text(
                  'Local Server Setup',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                showDialog(
                    context: context,
                    builder: (context) {
                      return CustomDialog();
                    });
              },
              child: ListTile(
                leading: Icon(
                  CustomIcons.language,
                  color: Colors.blue,
                ),
                title: Text(
                  'Language',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              child: ListTile(
                leading: Icon(
                  CustomIcons.info_circle_solid,
                  color: Colors.blue,
                ),
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 32,
                ),
                Divider(
                  thickness: 2,
                ),
                Text(
                  'Version',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Jesseframework 2.1',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'J3 Enterprise Solution',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DropWid extends StatefulWidget {
  final String list;

  DropWid(this.list);

  @override
  _DropWidState createState() => _DropWidState();
}

class _DropWidState extends State<DropWid> {
  String selecteditem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
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
              child: Text('French'),
              value: 'French',
            ),
            DropdownMenuItem(
              child: Text(widget.list),
              value: widget.list,
            )
          ],
        ),
      ),
    );
  }
}

//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:j3enterprise/about.dart';
//import 'package:j3enterprise/btasks.dart';
//import 'package:j3enterprise/my_flutter_app_icons.dart';
//import 'package:j3enterprise/profile.dart';
//import 'package:j3enterprise/setup_communication.dart';
//import 'package:j3enterprise/sever_setup.dart';
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  bool pinswitch = false;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      drawer: Drawer(
//        child: ListView(
//          children: <Widget>[
//            DrawerHeader(
//              child: Align(
//                alignment: Alignment.bottomLeft,
//                child: Row(
//                  children: <Widget>[
//                    Icon(Icons.settings,size: 30,color: Colors.white,),
//                    SizedBox(width: 27,),
//                    Text('Settings',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
//                  ],
//                )
//              ),
//              decoration: BoxDecoration(
//                gradient: LinearGradient(
//                    colors: [Colors.blueGrey, Colors.blue],
//                    begin: Alignment.topLeft,
//                    end: Alignment.bottomRight),
//              ),
//            ),
//            Align(
//              alignment: Alignment.bottomLeft,
//              child: GestureDetector(
//                onTap: () {
//                  Navigator.of(context).pop();
//                  Navigator.push(
//                      context,
//                      MaterialPageRoute(
//                          builder: (context) => SetupCommunication()));
//                },
//                child: ListTile(
//                  leading: Icon(
//                    CustomIcons.wrench_solid,
//                    color: Colors.black,
//                  ),
//                  title: Text(
//                    'Setup Communication',
//                    style: TextStyle(color: Colors.black, fontSize: 16),
//                  ),
//                ),
//              ),
//            ),
//            Align(
//              alignment: Alignment.bottomLeft,
//              child: GestureDetector(
//                onTap: () {
//                  Navigator.of(context).pop();
//                  Navigator.push(
//                      context,
//                      MaterialPageRoute(
//                          builder: (context) => BackgroundTasks()));
//                },
//                child: ListTile(
//                  leading: Icon(
//                    Icons.sync,
//                    color: Colors.black,
//                  ),
//                  title: Text(
//                    'Background Jobs',
//                    style: TextStyle(color: Colors.black, fontSize: 16),
//                  ),
//                ),
//              ),
//            ),
//            Align(
//              alignment: Alignment.bottomLeft,
//              child: GestureDetector(
//                onTap: () {
//                  Navigator.of(context).pop();
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => LocalServer()));
//                },
//                child: ListTile(
//                  leading: Icon(
//                    CustomIcons.database_solid,
//                    color: Colors.black,
//                  ),
//                  title: Text(
//                    'Local Server Setup',
//                    style: TextStyle(color: Colors.black, fontSize: 16),
//                  ),
//                ),
//              ),
//            ),
//            Align(
//              alignment: Alignment.bottomLeft,
//              child: GestureDetector(
//                onTap: () {
//                  Navigator.of(context).pop();
//                  showDialog(
//                      context: context,
//                      builder: (context) {
//                        return AlertDialog(
//                          title: Text(
//                            'Language',
//                            style: TextStyle(
//                                fontSize: 18,
//                                fontWeight: FontWeight.w500),
//                          ),
//                          content: DropWid('English'),
//                          actions: <Widget>[
//                            FlatButton(
//                              onPressed: () {
//                                Navigator.of(context).pop();
//                              },
//                              child: Text('OK'),
//                            ),
//                            FlatButton(
//                              onPressed: () {
//                                Navigator.of(context).pop();
//                              },
//                              child: Text('Cancel'),
//                            )
//                          ],
//                        );
//                      });
//                },
//                child: ListTile(
//                  leading: Icon(
//                    CustomIcons.language,
//                    color: Colors.black,
//                  ),
//                  title: Text(
//                    'Language',
//                    style: TextStyle(color: Colors.black, fontSize: 16),
//                  ),
//                ),
//              ),
//            ),
//            Align(
//              alignment: Alignment.bottomLeft,
//              child: GestureDetector(
//                onTap: () {
//                  Navigator.of(context).pop();
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => About()));
//                },
//                child: ListTile(
//                  leading: Icon(
//                    CustomIcons.info_circle_solid,
//                    color: Colors.black,
//                  ),
//                  title: Text(
//                    'About',
//                    style: TextStyle(color: Colors.black, fontSize: 16),
//                  ),
//                ),
//              ),
//            ),
//            Align(
//              alignment: Alignment.bottomCenter,
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  SizedBox(
//                    height: 32,
//                  ),
//                  Divider(
//                    thickness: 2,
//                  ),
//                  Text(
//                    'Version',
//                    style: TextStyle(color: Colors.black, fontSize: 12),
//                  ),
//                  SizedBox(
//                    height: 8,
//                  ),
//                  Text(
//                    'Jesseframework 2.1',
//                    style: TextStyle(color: Colors.grey, fontSize: 12),
//                  ),
//                  SizedBox(
//                    height: 8,
//                  ),
//                  Text(
//                    'J3 Enterprise Solution',
//                    style: TextStyle(color: Colors.grey, fontSize: 12),
//                  ),
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//      body: Container(
//        decoration: BoxDecoration(
//            image: DecorationImage(
//          image: AssetImage('images/beach-background-4.jpg'),
//          fit: BoxFit.cover,
//        )),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            Flexible(
//              child: Center(
//                child: Image(
//                  image: AssetImage('images/logo.png'),
//                ),
//              ),
//            ),
//            Flexible(
//              flex: 2,
//              fit: FlexFit.loose,
//              child: Center(
//                child: Wrap(
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.symmetric(horizontal: 16),
//                      child: Container(
//                        decoration: BoxDecoration(
//                          color: Colors.white.withAlpha(240),
//                          borderRadius: BorderRadius.all(Radius.circular(10)),
//                        ),
//                        child: Column(
//                          children: <Widget>[
//                            SizedBox(height: 14,),
//                            ListTile(
//                                leading: Icon(
//                                  Icons.person_outline,
//                                  color: Colors.black,
//                                ),
//                                title: Column(
//                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                  children: <Widget>[
//                                    Align(
//                                        alignment: Alignment.centerLeft,
//                                        child: Text(
//                                          'Username',
//                                          style: TextStyle(
//                                              fontWeight: FontWeight.bold),
//                                        )),
//                                    TextField(
//                                        keyboardType: TextInputType.number),
//                                  ],
//                                )),
//                            ListTile(
//                              leading: Icon(
//                                Icons.lock_outline,
//                                color: Colors.black,
//                              ),
//                              title: Column(
//                                children: <Widget>[
//                                  Align(
//                                      alignment: Alignment.centerLeft,
//                                      child: Text(
//                                        'Password',
//                                        style: TextStyle(
//                                            fontWeight: FontWeight.bold),
//                                      )),
//                                  TextField(
//                                    obscureText: true,
//                                  ),
//                                ],
//                              ),
//                              trailing: Padding(
//                                padding: EdgeInsets.only(top: 32),
//                                child: Icon(
//                                  Icons.remove_red_eye,
//                                  color: Colors.black,
//                                ),
//                              ),
//                            ),
//                            ListTile(
//                                leading: Icon(
//                                  Icons.home,
//                                  color: Colors.black,
//                                ),
//                                title: Column(
//                                  children: <Widget>[
//                                    Align(
//                                        alignment: Alignment.centerLeft,
//                                        child: Text(
//                                          'Company Code',
//                                          style: TextStyle(
//                                              fontWeight: FontWeight.bold),
//                                        )),
//                                    TextField(
//                                        keyboardType: TextInputType.number),
//                                  ],
//                                )),
//                            SwitchListTile(
//                                value: pinswitch,
//                                onChanged: (b) {
//                                  setState(() {
//                                    pinswitch = b;
//                                  });
//                                },
//                                title: Text(
//                                  'Pin Only',
//                                  style: TextStyle(fontWeight: FontWeight.bold),
//                                ),
//                                secondary: SvgPicture.asset('images/pin.svg')),
//                            Padding(
//                              padding:
//                                  const EdgeInsets.only(left: 16, right: 16),
//                              child: FlatButton(
//                                color: Colors.blue,
//                                onPressed: () {
//                                  Navigator.push(
//                                      context,
//                                      MaterialPageRoute(
//                                          builder: (context) => LandingPage()));
//                                },
//                                child: Center(
//                                    child: Text(
//                                  'LOGIN',
//                                  style: TextStyle(
//                                      fontWeight: FontWeight.bold,
//                                      color: Colors.white),
//                                )),
//                              ),
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                              children: <Widget>[
//                                Padding(
//                                  padding: const EdgeInsets.all(8.0),
//                                  child: Image(
//                                    width: 24,
//                                    height: 24,
//                                    image: AssetImage('images/g+.png'),
//                                  ),
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.all(8.0),
//                                  child: Image(
//                                    width: 24,
//                                    height: 24,
//                                    image: AssetImage('images/facebook.png'),
//                                  ),
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.all(8.0),
//                                  child: Image(
//                                    image: AssetImage('images/twitter.png'),
//                                  ),
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.all(8.0),
//                                  child: Image(
//                                    width: 24,
//                                    height: 24,
//                                    image: AssetImage('images/email.png'),
//                                  ),
//                                ),
//                              ],
//                            ),
//                            SizedBox(
//                              height: 4,
//                            )
//                          ],
//                        ),
//                      ),
//                    )
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class DropWid extends StatefulWidget {
//  final String list;
//  DropWid(this.list);
//
//  @override
//  _DropWidState createState() => _DropWidState();
//}
//
//class _DropWidState extends State<DropWid> {
//  String selecteditem;
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: Padding(
//        padding: const EdgeInsets.symmetric(horizontal: 16.0),
//        child: DropdownButton(
//          isExpanded: true,
//          onChanged: (value) {
//            setState(() {
//              selecteditem = value;
//            });
//          },
//          value: selecteditem,
//          items: [
//            DropdownMenuItem(
//              child: Text('French'),
//              value: 'French',
//            ),
//            DropdownMenuItem(
//              child: Text(widget.list),
//              value: widget.list,
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
