import 'package:flutter/material.dart';

class TextFromFieldEmailReusable extends StatelessWidget {
  final String labelName;
  final TextEditingController controllerName;
  final String validationText;

  TextFromFieldEmailReusable(
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                icon: Icon(Icons.email),
                labelText: labelName,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
