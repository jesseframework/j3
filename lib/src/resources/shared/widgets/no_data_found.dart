import 'package:flutter/material.dart';

class BuildOnNoData extends StatelessWidget {
  String message;
  BuildOnNoData({this.message});
  @override
  Widget build(BuildContext context) {

      return Expanded(
        child: Center(
          child: Text(
            message,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black45,
                fontWeight: FontWeight.w800,
                fontSize: 25),
          ),
        ),
      );
    }
  }

