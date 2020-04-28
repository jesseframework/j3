import 'package:flutter/material.dart';

class TextFromFieldNullableReusable extends StatelessWidget {
  final String labelName;
  final TextEditingController controllerName;
  final String validationText;

  TextFromFieldNullableReusable(
      {this.labelName, this.controllerName, this.validationText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.00),
            child: TextFormField(
              controller: controllerName,
              validator: (_value) {
                return _value.length < 3 ? validationText : null;
              },
              decoration: InputDecoration(
                filled: true,
                //icon: Icon(Icons.supervised_user_circle),
                labelText: labelName,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
