import 'package:flutter/material.dart';

class TextFromFieldNullableReusable extends StatelessWidget {
  final TextEditingController controllerName;
  final String validationText;
  final InputDecoration fieldDecoration;

  TextFromFieldNullableReusable(
      {this.controllerName, this.validationText, this.fieldDecoration});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          controller: controllerName,
          validator: (_value) {
            return _value.length < 3 ? validationText : null;
          },
          decoration: fieldDecoration.copyWith(filled: true)),
    );
  }
}
