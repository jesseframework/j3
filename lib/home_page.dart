import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j3enterprise/profile.dart';

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
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Image.asset(
            'images/beach-background.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    //Works like bootstrap with 12 columns (works for rows as well) max 10
                    flex: 3,
                    child: Container(
                      child: Image.asset(
                        'images/logo.png',
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 7,
                    child: Form(
                      child: Container(
                        constraints: BoxConstraints(
                            minWidth: 100,
                            maxWidth: 400,
                            minHeight: 100,
                            maxHeight: 450),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                            // Add border radius
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              color: Colors.white.withOpacity(0.8),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            icon: Icon(Icons.person),
                                            labelText: 'Username'),
                                      ),
                                    ),
                                    Expanded(
                                      //Fit and size widgets widgets according to container size
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          labelText: 'Password',
                                        ),
                                        obscureText: true, // Hide password
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            icon: Icon(Icons.home),
                                            labelText: 'Company Code'),
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          CustomIcons.pushpin,
                                          color: Colors.grey.shade600,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Pin Only",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey.shade600,
                                            ),
                                          ),
                                        ),
                                        Switch(
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
                                    ButtonTheme(
                                      minWidth: double.infinity,
                                      child: RaisedButton(
                                          color: Colors.blue.shade500,
                                          child: Text(
                                            'Login',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LandingPage()));
                                          }),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Expanded(
                                          child: Divider(
                                              color: Colors.black
                                                  .withOpacity(0.2)),
                                        ),
                                        SizedBox(width: 10.0, height: 10),
                                        Text(
                                          'or',
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(.5)),
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                          height: 10,
                                        ),
                                        Expanded(
                                          child: Divider(
                                              color: Colors.black
                                                  .withOpacity(0.2)),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Icon(
                                            CustomIcons.google_brands,
                                            color: Colors.red,
                                          ),
                                        ),
                                        Expanded(
                                          child: Icon(
                                              CustomIcons
                                                  .facebook_square_brands,
                                              color: Colors.blue.shade900),
                                        ),
                                        Expanded(
                                          child: Icon(
                                            CustomIcons.twitter_square_brands,
                                            color: Colors.blue.shade500,
                                          ),
                                        ),
                                        Expanded(
                                          child: Icon(
                                              CustomIcons.envelope_solid,
                                              color: Colors.orange),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

//   Widget customDrawer() {
//     return Drawer(
//       child: ListView(
//         children: <Widget>[
//           DrawerHeader(
//             child: Align(
//                 alignment: Alignment.bottomLeft,
//                 child: Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.settings,
//                       size: 32,
//                       color: Colors.white,
//                     ),
//                     SizedBox(
//                       width: 27,
//                     ),
//                     Text(
//                       'Settings',
//                       style: TextStyle(
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     ),
//                   ],
//                 )),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   colors: [Colors.blueGrey, Colors.blue],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomLeft,
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => SetupCommunication()));
//               },
//               child: ListTile(
//                 leading: Icon(
//                   CustomIcons.wrench_solid,
//                   color: Colors.blue,
//                 ),
//                 title: Text(
//                   'Setup Communication',
//                   style: TextStyle(color: Colors.black, fontSize: 16),
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomLeft,
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => BackgroundTasks()));
//               },
//               child: ListTile(
//                 leading: Icon(
//                   Icons.sync,
//                   color: Colors.blue,
//                 ),
//                 title: Text(
//                   'Background Jobs',
//                   style: TextStyle(color: Colors.black, fontSize: 16),
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomLeft,
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => LocalServer()));
//               },
//               child: ListTile(
//                 leading: Icon(
//                   CustomIcons.database_solid,
//                   color: Colors.blue,
//                 ),
//                 title: Text(
//                   'Local Server Setup',
//                   style: TextStyle(color: Colors.black, fontSize: 16),
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomLeft,
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//                 showDialog(
//                     context: context,
//                     builder: (context) {
//                       return CustomDialog();
//                     });
//               },
//               child: ListTile(
//                 leading: Icon(
//                   CustomIcons.language,
//                   color: Colors.blue,
//                 ),
//                 title: Text(
//                   'Language',
//                   style: TextStyle(color: Colors.black, fontSize: 16),
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomLeft,
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => About()));
//               },
//               child: ListTile(
//                 leading: Icon(
//                   CustomIcons.info_circle_solid,
//                   color: Colors.blue,
//                 ),
//                 title: Text(
//                   'About',
//                   style: TextStyle(color: Colors.black, fontSize: 16),
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 SizedBox(
//                   height: 32,
//                 ),
//                 Divider(
//                   thickness: 2,
//                 ),
//                 Text(
//                   'Version',
//                   style: TextStyle(color: Colors.black, fontSize: 12),
//                 ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text(
//                   'Jesseframework 2.1',
//                   style: TextStyle(color: Colors.grey, fontSize: 12),
//                 ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text(
//                   'J3 Enterprise Solution',
//                   style: TextStyle(color: Colors.grey, fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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

// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       drawer: customDrawer(),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage('images/beach-background.jpg'),
//               fit: BoxFit.cover,
//             )),
//             height: double.maxFinite,
//           ),
//           Container(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 25,
//                   ),
//                   Flexible(
//                     child: Center(
//                       child: Image(
//                         image: AssetImage('images/logo.png'),
//                         height: 250,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Flexible(
//                     flex: 3,
//                     fit: FlexFit.loose,
//                     child: Center(
//                       child: Wrap(
//                         children: <Widget>[
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 16),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withAlpha(240),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10)),
//                               ),
//                               child: Padding(
//                                 padding:
//                                     const EdgeInsets.only(left: 15, right: 15),
//                                 child: Column(
//                                   children: <Widget>[
//                                     SizedBox(
//                                       height: 18,
//                                     ),
//                                     Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: <Widget>[
//                                           Icon(
//                                             Icons.person_outline,
//                                             color: Colors.black,
//                                           ),
//                                           SizedBox(
//                                             width: 15,
//                                           ),
//                                           Flexible(
//                                             child: TextField(
//                                               decoration: InputDecoration(
//                                                   labelText: "Username"),
//                                             ),
//                                           )
//                                         ]),
//                                     Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: <Widget>[
//                                           Icon(
//                                             Icons.lock_outline,
//                                             color: Colors.black,
//                                           ),
//                                           SizedBox(
//                                             width: 15,
//                                           ),
//                                           Expanded(
//                                             child: TextField(
//                                               obscureText: pass,
//                                               decoration: InputDecoration(
//                                                   suffixIcon: IconButton(
//                                                       icon: Icon(
//                                                         Icons.remove_red_eye,
//                                                         color: !pass
//                                                             ? Colors.black
//                                                             : Colors.grey,
//                                                       ),
//                                                       onPressed: () {
//                                                         setState(() {
//                                                           pass = !pass;
//                                                         });
//                                                       }),
//                                                   labelText: "Password"),
//                                             ),
//                                           ),
//                                         ]),
//                                     Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: <Widget>[
//                                           Icon(
//                                             Icons.home,
//                                             color: Colors.black,
//                                           ),
//                                           SizedBox(
//                                             width: 15,
//                                           ),
//                                           Expanded(
//                                             child: TextField(
//                                               keyboardType: TextInputType
//                                                   .numberWithOptions(
//                                                       decimal: false,
//                                                       signed: false),
//                                               decoration: InputDecoration(
//                                                   labelText: "Company Code"),
//                                             ),
//                                           )
//                                         ]),
//                                     SizedBox(
//                                       height: 10,
//                                     ),
//                                     Row(
//                                       children: <Widget>[
//                                         SvgPicture.asset('images/pin.svg'),
//                                         SizedBox(
//                                           width: 15,
//                                         ),
//                                         Expanded(
//                                             child: Text(
//                                           "Pin Only",
//                                           style: TextStyle(
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.w300),
//                                         )),
//                                         CupertinoSwitch(
//                                           value: isSwitched,
//                                           onChanged: (value) {
//                                             setState(() {
//                                               isSwitched = value;
//                                               print(isSwitched);
//                                             });
//                                           },
//                                           activeColor: Colors.black,
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       height: 10,
//                                     ),
//                                     FlatButton(
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(5)),
//                                       color: Colors.blue,
//                                       onPressed: () {
//                                         Navigator.pushReplacement(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     LandingPage()));
//                                       },
//                                       child: Center(
//                                           child: Padding(
//                                         padding: const EdgeInsets.all(11.0),
//                                         child: Text(
//                                           'LOGIN',
//                                           style: TextStyle(
//                                               fontWeight: FontWeight.w500,
//                                               color: Colors.white,
//                                               fontSize: 16),
//                                         ),
//                                       )),
//                                     ),
//                                     SizedBox(
//                                       height: 18,
//                                     ),
//                                     Row(
//                                       children: <Widget>[
//                                         Expanded(
//                                           child: Icon(
//                                             CustomIcons.google_brands,
//                                             color: Colors.red,
//                                           ),
//                                         ),
//                                         Expanded(
//                                           child: Icon(
//                                               CustomIcons
//                                                   .facebook_square_brands,
//                                               color: Colors.blue.shade900),
//                                         ),
//                                         Expanded(
//                                           child: Icon(
//                                             CustomIcons.twitter_square_brands,
//                                             color: Colors.blue.shade500,
//                                           ),
//                                         ),
//                                         Expanded(
//                                           child: Icon(
//                                               CustomIcons.envelope_solid,
//                                               color: Colors.orange),
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
