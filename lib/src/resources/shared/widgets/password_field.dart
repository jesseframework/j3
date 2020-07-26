/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';

class TextFromFieldPasswordReusable extends StatefulWidget {
  final InputDecoration fieldDecoration;
  final TextEditingController controllerName;
  final String validationText;

  TextFromFieldPasswordReusable(
      {this.fieldDecoration, this.controllerName, this.validationText});

  @override
  _TextFromFieldPasswordReusableState createState() =>
      _TextFromFieldPasswordReusableState();
}

class _TextFromFieldPasswordReusableState
    extends State<TextFromFieldPasswordReusable> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          validator: (val) {
            if (val.isEmpty) {
              return widget.validationText;
            }
            return null;
          },
          controller: widget.controllerName,
          decoration: widget.fieldDecoration.copyWith(
            filled: true,
            suffixIcon: IconButton(
              icon: !showPassword
                  ? Icon(CustomIcons.eye_off)
                  : Icon(CustomIcons.eye),
              onPressed: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
            ),
          ),
          obscureText: showPassword // Hide password
          ),
    );
  }
}
