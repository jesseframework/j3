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

class SplashPage extends StatelessWidget {
  static final route='/splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
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
            style: TextStyle(color: Colors.grey, fontSize: 12),
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
