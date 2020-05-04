import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';

class TextFromFieldPasswordReusable extends StatefulWidget {
  final String labelName;
  final TextEditingController controllerName;
  final String validationText;

  TextFromFieldPasswordReusable(
      {this.labelName, this.controllerName, this.validationText});

  @override
  _TextFromFieldPasswordReusableState createState() =>
      _TextFromFieldPasswordReusableState();
}

class _TextFromFieldPasswordReusableState
    extends State<TextFromFieldPasswordReusable> {
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.00),
            child: TextFormField(
              controller: widget.controllerName,
              decoration: InputDecoration(
                filled: true,
                suffixIcon: IconButton(
                  icon:
                      !pass ? Icon(CustomIcons.eye_off) : Icon(CustomIcons.eye),
                  onPressed: () {},
                ),
                labelText: widget.labelName,
              ),
              obscureText: pass, // Hide password
            ),
          )
        ],
      ),
    );
  }
}
