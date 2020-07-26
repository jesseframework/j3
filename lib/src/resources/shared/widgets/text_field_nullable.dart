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
