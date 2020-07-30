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

class ListFilter extends StatefulWidget {
  const ListFilter({
    @required this.placeholder,
    @required this.filter,
    @required this.onFilterChanged,
  });

  final String placeholder;
  final String filter;
  final Function(String) onFilterChanged;

  @override
  _ListFilterState createState() => new _ListFilterState();
}

class _ListFilterState extends State<ListFilter> {
  TextEditingController _filterController;
  FocusNode _focusNode;
  String _placeholder = '';

  @override
  void initState() {
    super.initState();
    _filterController = TextEditingController();
    _focusNode = FocusNode()..addListener(onFocusChanged);
    _placeholder = widget.placeholder;
  }

  void onFocusChanged() {
    setState(() {
      _placeholder = _focusNode.hasFocus ? '' : widget.placeholder;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _filterController.text = widget.filter;
  }

  @override
  void dispose() {
    _filterController.dispose();
    _focusNode.removeListener(onFocusChanged);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodyText1.color;
    final isFilterSet = (widget.filter ?? '').isNotEmpty;

    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Container(
        padding: const EdgeInsets.only(left: 8.0),
        height: 40,
        margin: EdgeInsets.only(bottom: 2.0),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: TextField(
          focusNode: _focusNode,
          textAlign: _focusNode.hasFocus || _filterController.text.isNotEmpty
              ? TextAlign.start
              : TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 8, right: 8, bottom: 6),
            suffixIcon: _filterController.text.isNotEmpty
                ? IconButton(
                    icon: Icon(
                      Icons.clear,
                      color: textColor,
                    ),
                    onPressed: () {
                      _filterController.text = '';
                      _focusNode.unfocus();
                      widget.onFilterChanged('');
                      setState(() {
                        _placeholder = widget.placeholder;
                      });
                    },
                  )
                : Icon(Icons.search, color: textColor),
            border: InputBorder.none,
            hintText: _placeholder,
          ),
          autocorrect: false,
          onChanged: (value) {
            widget.onFilterChanged(value);
          },
          controller: _filterController,
        ),
      ),
    );
  }
}
