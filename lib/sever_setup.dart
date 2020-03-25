import 'package:flutter/material.dart';

class LocalServer extends StatefulWidget {
  @override
  _LocalServerState createState() => _LocalServerState();
}

class _LocalServerState extends State<LocalServer> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading:  IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Server Setup'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 8,
                ),
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
                  color: Colors.green,
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
           SizedBox(height: 15,),
            DropWid(
              name: 'Server Name',
              list: 'ERP Next',
            ),
            SizedBox(height: 15,),
            NormWid(name: 'Database Name', type: 'u'),
            SizedBox(height: 15,),
            NormWid(name: 'SQL Username', type: 'u'),
            SizedBox(height: 15,),
            NormWid(name: 'SQL Password', type: 'p'),
            SizedBox(height: 15,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text('Connection Timeout: '),
                ),
                Expanded(
                  child: Slider(
                    activeColor: Colors.green.shade600,
                    inactiveColor: Colors.grey.shade300,
                    value: value,
                    onChanged: (val) {
                      setState(() {
                        value = val;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: ButtonTheme(
                height: 50,
                child: FlatButton(
                  color: Colors.green[400],
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    'SAVE CHANGES',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
              ),
            ),  SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: ButtonTheme(
                height: 50,
                child: FlatButton(
                  color: Colors.orangeAccent,
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    'TEST',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
              ),
            ),  SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: ButtonTheme(
                height: 50,
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    'CANCEL',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
              ),
            ),  SizedBox(height: 15,),
            SizedBox()
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
  String selecteditem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(widget.name),
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

class NormWid extends StatelessWidget {
  final name, type;
  NormWid({this.name, this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(name),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              obscureText: (type == 'u') ? false : true,
            ),
          )
        ],
      ),
    );
  }
}
