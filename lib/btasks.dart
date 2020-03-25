import 'package:flutter/material.dart';

class BackgroundTasks extends StatefulWidget {
  @override
  _BackgroundTasksState createState() => _BackgroundTasksState();
}

class _BackgroundTasksState extends State<BackgroundTasks> {
  int select = 0;
  TimeOfDay time = new TimeOfDay.now();
  DateTime date = DateTime.now();// Earlier it was DateTime date;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Background Jobs'),
        actions: <Widget>[
          Icon(
            Icons.stop,
            size: 36,
            color: Colors.red,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.sync,
            size: 28,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.file_download,
            size: 28,
            color: Colors.green.shade400,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.lock_open,
            size: 28,
            color: Colors.redAccent,
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, boxShadow: kElevationToShadow[4]),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Schedule Jobs',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      time != null
                          ? Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                time.hour >= 12
                                    ? "${time.hour - 12} : ${time.minute} PM"
                                    : "${time.hour} : ${time.minute} AM",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          : Container(
                              height: 0,
                              width: 0,
                            ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: kElevationToShadow[2]),
                        child: IconButton(
                          icon: Icon(Icons.alarm),
                          onPressed: () async {
                            var newTime = await showTimePicker(
                                context: context, initialTime: TimeOfDay.now());
                            setState(() {
                              time = newTime;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      date != null
                          ? Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "${date.day}/${date.month}/${date.year}",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          : Container(
                              height: 0,
                              width: 0,
                            ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: kElevationToShadow[2]),
                        child: IconButton(
                          icon: Icon(Icons.date_range),
                          onPressed: () async {
                            var result = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1970),
                                lastDate: DateTime(2100));

                            setState(() {
                              date = result;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            DropWid(
              name: 'Sync Frequency',
              list: 'Daily',
            ),
            DropWid(
              name: 'Select Job',
              list: 'Getiteminformation',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Container(
                    child: Text(
                      'START',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: Text('CANCEL',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'Running',
                      style: TextStyle(
                          color: select == 0 ? Colors.white : Colors.black),
                    ),
                    color: select == 0 ? Colors.blue : Colors.white,
                    onPressed: () {
                      setState(() {
                        select = 0;
                      });
                    },
                  ),
                  FlatButton(
                    color: select == 1 ? Colors.blue : Colors.white,
                    child: Text(
                      'SyncedJobs',
                      style: TextStyle(
                          color: select == 1 ? Colors.white : Colors.black),
                    ),
                    onPressed: () {
                      setState(() {
                        select = 1;
                      });
                    },
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 10),
                  child: Column(
                    children: <Widget>[
                      _colorRow2(
                          "Status ",
                          "Job",
                          "Date",
                          "Time",
                          Colors.blue.shade400,
                          Colors.white,
                          0,
                          MediaQuery.of(context).size.width * 1.1),
                      _colorRow(
                          "Started ",
                          "GetItemInformation",
                          "2/23/20",
                          "23:11",
                          Colors.blue.shade100,
                          Colors.black,
                          0,
                          MediaQuery.of(context).size.width * 1.1),
                      _colorRow(
                          "Scheduled ",
                          "Preferences",
                          "2/23/20",
                          "23:11",
                          Colors.white,
                          Colors.black,
                          0,
                          MediaQuery.of(context).size.width * 1.1),
                      _colorRow(
                          "Started ",
                          "GetInformation",
                          "2/23/20",
                          "23:11",
                          Colors.blue.shade100,
                          Colors.black,
                          0,
                          MediaQuery.of(context).size.width * 1.1),
                      _colorRow(
                          "Started ",
                          "JobDescription",
                          "2/23/20",
                          "23:11",
                          Colors.white,
                          Colors.black,
                          0,
                          MediaQuery.of(context).size.width * 1.1),
                      _colorRow(
                          "Started ",
                          "GetItemInformation",
                          "2/23/20",
                          "23:11",
                          Colors.blue.shade100,
                          Colors.black,
                          0,
                          MediaQuery.of(context).size.width * 1.1),
                      _colorRow(
                          "Scheduled ",
                          "Preferences",
                          "2/23/20",
                          "23:11",
                          Colors.white,
                          Colors.black,
                          0,
                          MediaQuery.of(context).size.width * 1.1),
                      _colorRow(
                          "Started ",
                          "GetItemInformation",
                          "2/23/20",
                          "23:11",
                          Colors.blue.shade100,
                          Colors.black,
                          0,
                          MediaQuery.of(context).size.width * 1.1),
                      _colorRow(
                          "Scheduled ",
                          "Preferences",
                          "2/23/20",
                          "23:11",
                          Colors.white,
                          Colors.black,
                          0,
                          MediaQuery.of(context).size.width * 1.1),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class DropWid extends StatefulWidget {
  final name, list;

  DropWid({this.name, this.list});

  @override
  _DropWidState createState() => _DropWidState();
}

class _DropWidState extends State<DropWid> {
  String selecteditem = 'None';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              widget.name,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DropdownButton(
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  selecteditem = value;
                });
              },
              value: selecteditem,
              items: [
                DropdownMenuItem(
                  child: Text('None'),
                  value: 'None',
                ),
                DropdownMenuItem(
                  child: Text(widget.list),
                  value: widget.list,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _colorRow(String key, String value, String three, String four,
    Color color, Color text, int index, double size) {
  return Container(
    width: size,
    decoration: BoxDecoration(
      color: color,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
              decoration: BoxDecoration(border: Border.all(width: .5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(key,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14, color: text)),
              )),
        ),
        Expanded(
          flex: 2,
          child: Container(
              decoration: BoxDecoration(border: Border.all(width: .5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(value,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14, color: text)),
              )),
        ),
        Expanded(
          child: Container(
              decoration: BoxDecoration(border: Border.all(width: .5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(three,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14, color: text)),
              )),
        ),
        Expanded(
          child: Container(
              decoration: BoxDecoration(border: Border.all(width: .5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(four,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14, color: text)),
              )),
        ),
      ],
    ),
  );
}

Widget _colorRow2(String key, String value, String three, String four,
    Color color, Color text, int index, double size) {
  return Container(
    width: size,
    decoration: BoxDecoration(
      color: color,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                right: BorderSide(width: .5, color: Colors.blue.shade900),
              )),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                child: Text(key,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14,
                        color: text,
                        fontWeight: FontWeight.bold)),
              )),
        ),
        Expanded(
          flex: 2,
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                right: BorderSide(width: .5, color: Colors.blue.shade900),
              )),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                child: Text(value,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14,
                        color: text,
                        fontWeight: FontWeight.bold)),
              )),
        ),
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                right: BorderSide(width: .5, color: Colors.blue.shade900),
              )),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                child: Text(three,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14,
                        color: text,
                        fontWeight: FontWeight.bold)),
              )),
        ),
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                right: BorderSide(width: .5, color: Colors.blue.shade900),
              )),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                child: Text(four,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14,
                        color: text,
                        fontWeight: FontWeight.bold)),
              )),
        ),
      ],
    ),
  );
}
