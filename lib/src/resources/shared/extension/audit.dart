import 'package:flutter/cupertino.dart';

class Audit {
  DateTime creationtime;
  DateTime deletetime;
  String createuserid;
  String deleteuserid;

  Audit(
      this.createuserid, this.creationtime, this.deletetime, this.deleteuserid);
}
