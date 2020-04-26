import 'package:flutter/material.dart';
import 'package:j3enterprise/src/ui/communication/setup_communication_form.dart';

class CommunicationPage extends StatelessWidget {
  //const CommunicationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: BlocProvider(
        //   create: (context){
        //     return CommunicationBloc(
        //       context
        //       ),
        //   },
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
