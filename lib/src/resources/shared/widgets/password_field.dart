import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';

class TextFromFieldPasswordReusable extends StatefulWidget {
  final InputDecoration fieldDecoration;
  final TextEditingController controllerName;
  final String validationText;

  TextFromFieldPasswordReusable(
      {this.fieldDecoration, this.controllerName, this.validationText});

  @override
  _TextFromFieldPasswordReusableState createState() =>
      _TextFromFieldPasswordReusableState();
}

class _TextFromFieldPasswordReusableState
    extends State<TextFromFieldPasswordReusable> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          validator: (val) {
            if (val.isEmpty) {
              return widget.validationText;
            }
            return null;
          },
          controller: widget.controllerName,
          decoration: widget.fieldDecoration.copyWith(
            filled: true,
            suffixIcon: IconButton(
              icon: !showPassword
                  ? Icon(CustomIcons.eye_off)
                  : Icon(CustomIcons.eye),
              onPressed: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
            ),
          ),
          obscureText: showPassword // Hide password
          ),
    );
  }
}
