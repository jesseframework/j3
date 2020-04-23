import 'package:flutter/material.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalization.of(context).translate('about_title_about')),
      ),
      body: Column(
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
                  //Icon(Icons.chevron_left,size: 36,),
                  //Expanded(child: Text('About',style: TextStyle(fontSize: 22),)),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          NormWid(name:AppLocalization.of(context).translate('preduct_version_label_about'),type:'u',text: '19.05.001',),
          NormWid(name:AppLocalization.of(context).translate('device_id_label_about'),type:'u',text: '0000-0000-0000-0001',),
          NormWid(name:AppLocalization.of(context).translate('device_status_label_about'),type:'u',text: 'Approved for develoment',),
        ],
      ),
    );
  }
}

class NormWid extends StatelessWidget {

  final String name,type,text;
  NormWid({this.name, this.type,this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: Text(name),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: TextField(
              obscureText: (type=='u')?false:true,
              decoration: InputDecoration(
                hintText: text
              ),
            ),
          )
        ],
      ),
    );
  }
}