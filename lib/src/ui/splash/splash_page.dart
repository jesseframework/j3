import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'images/j3-for-gif.gif',
        ),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Version',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Jesseframework 2.1',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'J3 Enterprise Solution',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    ));
  }
}
