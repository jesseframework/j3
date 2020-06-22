import 'package:flutter/material.dart';
import 'package:j3enterprise/src/ui/communication/setup_communication_form.dart';

class CommunicationPage extends StatelessWidget {
  static final route='/communication';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Flexible(child: SetupCommunicationForm())],
          )
        ]),
      ),
    );
  }
}
