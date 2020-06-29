import 'package:flutter/material.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
//import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';

Locale spanish = Locale("es", "ES");
Locale hindi = Locale("hi", "IN");
Locale english = Locale("en", "IN");

class LangCustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        margin: EdgeInsets.only(top: 40),
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // To make the card compact
          children: <Widget>[
            Container(
              alignment: Alignment.bottomLeft,
              height: 70,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 18.0, left: 15),
                child: Text(
                  "Language",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            DropWid('English'),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(width: 10.0),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 85,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15.0, 10, 15, 10),
                      child: Text(
                        "OK",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 85,
                    alignment: Alignment.center,
                    color: Colors.grey.shade700,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15.0, 10, 15, 10),
                      child: Text(
                        "Cancel",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
              ],
            ),
            SizedBox(height: 16.0),
          ],
        ),
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

// class _DropWidState extends State<DropWid> {
//   String selecteditem;

//   @override
//   void initState() {

//     super.initState();
//     selecteditem=widget.list;
//   }
//   @override
//   Widget build(BuildContext context) {

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: DropdownButton(
//           isExpanded: true,
//           onChanged: (value) {
//             setState(() {
//               selecteditem = value;
//             });
//           },
//           value: selecteditem,
//           items: [
//             DropdownMenuItem(
//               child: Text('French'),
//               value: 'French',
//             ),
//             DropdownMenuItem(
//               child: Text(widget.list),
//               value: widget.list,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class _DropWidState extends State<DropWid> {
  String selecteditem = 'English';

  @override
  void initState() {
    super.initState();
  }

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
              if (value == "Spanish") {
                //AppLocalization.of(context).translate('login_button'),
                AppLocalization.of(context).locale = spanish;
              } else if (value == 'English') {
                //EasyLocalization.of(context).locale = english;
                //AppLocalization.of(context).locale == "en";
              } else if (value == 'Hindi') {
                //EasyLocalization.of(context).locale = hindi;
              }
            });
          },
          value: selecteditem,
          items: [
            DropdownMenuItem(
              child: Text("English"),
              value: 'English',
            ),
            DropdownMenuItem(
              child: Text('Spanish'),
              value: 'Spanish',
            ),
            DropdownMenuItem(
              child: Text("Hindi"),
              value: 'Hindi',
            ),
          ],
        ),
      ),
    );
  }
}

class Consts {
  Consts._();

  static const double padding = 12.0;
  static const double avatarRadius = 66.0;
}
