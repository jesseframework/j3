import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey.shade100,
      body:FutureBuilder(
          future: initPlatformState(),
          builder: (context,platfromData){
            if(platfromData.hasData){
              print(platfromData.data);
              return Container(

                child: Stack(
                  children: <Widget>[
                    Container(),
                    Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            color:  const Color(0xff5362b7),
                            borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(25)),
                          ),
                          height: 347,
                        )),
                    Positioned(
                        top: 20,
                        right: 0,
                        left: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: ListView(

                            children: <Widget>[
                              IconButton(
                                  alignment: Alignment.centerLeft,
                                  icon: Icon(Icons.arrow_back), onPressed: (){
                                Navigator.pop(context);
                              }),
                              Container(
                                margin: EdgeInsets.only(bottom: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "About",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54),

                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.more_vert,
                                        size: 30,
                                      ),
                                      color: Colors.white,
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 327,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: Colors.white, borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Text('Device Name '
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                          ),
                                          child: Center(child: Text( platfromData.data['model'] ,textAlign:TextAlign.center,
                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),softWrap: true,)),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 30, bottom: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(

                                                borderRadius: BorderRadius.circular(2)),
                                            height: 4,
                                            width: 16,
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 6),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(2)),
                                            height: 4,
                                            width: 16,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(

                                                borderRadius: BorderRadius.circular(2)),
                                            height: 4,
                                            width: 16,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Detail',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black54),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(9)),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 40,

                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:  const Color(0xff5362b7),
                                                  borderRadius: BorderRadius.circular(9)),
                                              child: Icon(Icons.important_devices),

                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Device ID",
                                              ),
                                              Text( platfromData.data['identifierForVendor'],style: TextStyle(
                                                fontSize: 12
                                              ),
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(9)),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:  const Color(0xff5362b7),
                                                  borderRadius: BorderRadius.circular(9)),

                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text('Device Name ',
                                              ),
                                              Text( platfromData.data['name'],
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(9)),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:  const Color(0xff5362b7),
                                                  borderRadius: BorderRadius.circular(9)),

                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("System Version",
                                              ),
                                              Text( platfromData.data['systemVersion'],
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(9)),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:  const Color(0xff5362b7),
                                                  borderRadius: BorderRadius.circular(9)),

                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Shell",
                                              ),
                                              Text("17 Monday june",
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(9)),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color:  const Color(0xff5362b7),
                                                  borderRadius: BorderRadius.circular(9)),

                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Shell",
                                              ),
                                              Text("17 Monday june",
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              );



          }

            return CircularProgressIndicator();

          })
    );
  }
  Future<Map<String, dynamic>> initPlatformState() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    Map<String, dynamic> deviceData;

    try {
      if (Platform.isAndroid) {

        deviceData = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
      } else if (Platform.isIOS) {
        deviceData = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
      }
    } on PlatformException {
      deviceData = <String, dynamic>{
        'Error:': 'Failed to get platform version.'
      };
    }
    return deviceData;

  }
  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'androidId': build.androidId,
      'systemFeatures': build.systemFeatures,
    };
  }
  Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'systemName': data.systemName,
      'systemVersion': data.systemVersion,
      'model': data.model,
      'localizedModel': data.localizedModel,
      'identifierForVendor': data.identifierForVendor,
      'isPhysicalDevice': data.isPhysicalDevice,
      'utsname.sysname:': data.utsname.sysname,
      'utsname.nodename:': data.utsname.nodename,
      'utsname.release:': data.utsname.release,
      'utsname.version:': data.utsname.version,
      'utsname.machine:': data.utsname.machine,
    };
  }

}


