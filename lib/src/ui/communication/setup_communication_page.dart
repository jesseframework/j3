import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/ui/communication/bloc/communication_bloc.dart';
import 'package:j3enterprise/src/ui/communication/setup_communication_form.dart';

class CommunicationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) {
            return CommunicationBloc();
          },
          child: Stack(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Flexible(child: SetupCommunicationForm())],
            )
          ]),
        ),
      ),
    );
  }
}
