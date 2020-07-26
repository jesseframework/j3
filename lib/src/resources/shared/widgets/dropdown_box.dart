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

class DropdownFormFieldNormalReuse extends StatefulWidget {
  final String hintText;
  final dynamic selectedValue;
  final List<String> listData;

  final onUpdateSelectionValue;

  DropdownFormFieldNormalReuse(this.onUpdateSelectionValue,
      {@required this.hintText,
      @required this.selectedValue,
      @required this.listData});

  //ToDo check of set state is ok in this widget using bloc

  @override
  _DropdownFormFieldNormalReuseState createState() =>
      _DropdownFormFieldNormalReuseState();
}

class _DropdownFormFieldNormalReuseState
    extends State<DropdownFormFieldNormalReuse> {
  var setselectedValue;

  @override
  Widget build(BuildContext context) {
    print("dropdown valuue: ${widget.selectedValue}");
    setselectedValue = widget.selectedValue;

    return Container(
        child: Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(10.00),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(filled: true),
              hint: Text(widget.hintText),
              value: setselectedValue,
              onChanged: (String newValue) {
                setState(() {
                  setselectedValue = newValue;
                  widget.onUpdateSelectionValue(newValue);
                });
              },
              items: widget.listData.map((String dropDownStringItem) {
                return new DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: new Text(
                    dropDownStringItem,
                    style: new TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              isExpanded: true,
            ))
      ],
    ));
  }
}
