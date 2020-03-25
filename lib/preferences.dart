import 'package:flutter/material.dart';

class Preferences extends StatefulWidget {
  @override
  _PreferencesState createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('J3 ENTERPRISE'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Icon(Icons.wifi,color: Colors.greenAccent,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: kElevationToShadow[4]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:6.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.chevron_left,size: 36,),
                    Expanded(child: Text('Preferences',style: TextStyle(fontSize: 22),)),
                    Icon(Icons.stop,size: 36,color: Colors.red,),
                    Icon(Icons.sync,size: 28,),
                    Icon(Icons.file_download,size: 28,color: Colors.green,),
                    Icon(Icons.lock_open,size: 28,color: Colors.redAccent,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:24.0,top: 16),
              child: Text('Login Validations',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            LTile('Enable/Disable case sensitivity'),
            LTile('Enable/Disable password remainder'),
            LTile('Enable/Disable password history(prevent reuse)'),
            LTile('Enable/Disable Two Factor Authentication(2FA)'),
            LTile('Enable/Disable open authentication for Office 365, Google, Facebook, Twitter'),
            LTile('Enable/Disable enterprise support for windows active directory'),
            DropWid(name: 'Set regular expression for password strength',list: 'alpha-numeric',),
            Counter1('Set password age','days'),
            Counter1('Block user if attempt exceeds-(IP address should also be blacklisted','tries'),
            Counter2('Set min/max length for username'),
            Counter2('Set min/max length for password'),
            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}

class LTile extends StatefulWidget {

  final String name;
  LTile(this.name);

  @override
  _LTileState createState() => _LTileState();
}

class _LTileState extends State<LTile> {

  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SwitchListTile(
        title: Text(widget.name),
        value: val,
        onChanged: (val){
          setState(() {
            val  = true;
          });
        },
      ),
    );
  }
}

class DropWid extends StatefulWidget {

  final name,list;
  DropWid({this.name, this.list});

  @override
  _DropWidState createState() => _DropWidState();
}

class _DropWidState extends State<DropWid> {

  String selecteditem = 'alpha-numeric';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal:16.0),
            child: Text(widget.name,style: TextStyle(fontSize: 16),),
          ),
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal:16.0),
            child: DropdownButton(
              isExpanded: true,
              onChanged: (value){
                setState(() {
                  selecteditem = value;
                });
              },
              value: selecteditem,
              items: [
                DropdownMenuItem(
                  child: Text('numeric'),
                  value: 'numeric',
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

class Counter1 extends StatefulWidget {

  final String title,extra;
  Counter1(this.title,this.extra);

  @override
  _Counter1State createState() => _Counter1State();
}

class _Counter1State extends State<Counter1> {

  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24.0,vertical: 4),
      child: Row(
        children: <Widget>[
            Expanded(
              child: Text(widget.title,style: TextStyle(fontSize: 16),),
            ),
          _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
          Text(_itemCount.toString(),style: TextStyle(fontSize: 16),),
          IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++)),
          Text(widget.extra,style: TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
}

class Counter2 extends StatefulWidget {

  final String title;
  Counter2(this.title);

  @override
  _Counter2State createState() => _Counter2State();
}

class _Counter2State extends State<Counter2> {
  int _itemCount = 0;
  int _itemCount2 = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24.0,vertical: 4),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(widget.title,style: TextStyle(fontSize: 16),),
          ),
          _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
          Text(_itemCount.toString(),style: TextStyle(fontSize: 16),),
          IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++)),
          _itemCount2!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount2--),):new Container(),
          Text(_itemCount2.toString(),style: TextStyle(fontSize: 16),),
          IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount2++)),
        ],
      ),
    );
  }
}


