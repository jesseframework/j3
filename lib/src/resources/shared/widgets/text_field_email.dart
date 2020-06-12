import 'package:flutter/material.dart';

class TextFromFieldEmailReusable extends StatelessWidget {
  final InputDecoration fieldDecoration;
  final TextEditingController controllerName;
  final String validationText;

  TextFromFieldEmailReusable(
      {this.fieldDecoration, this.controllerName, this.validationText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controllerName,
        keyboardType: TextInputType.emailAddress,
        decoration: fieldDecoration.copyWith(
          filled: true,
          icon: Icon(Icons.email),
        ));
  }
}
