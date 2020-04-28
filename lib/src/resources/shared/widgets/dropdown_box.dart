import 'package:flutter/material.dart';

class DropdownFormFieldNormalReuse extends StatefulWidget {
  final String hintText;
  final dynamic selectedValue;
  final List<String> listData;

  var onUpdateERBSelection;

  DropdownFormFieldNormalReuse(this.onUpdateERBSelection,
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
    return Container(
        child: Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(10.00),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(filled: true),
              hint: Text(widget.hintText),
              value: widget.selectedValue,
              onChanged: (String newValue) {
                setState(() {
                  setselectedValue = newValue;
                  widget.onUpdateERBSelection(newValue);
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
