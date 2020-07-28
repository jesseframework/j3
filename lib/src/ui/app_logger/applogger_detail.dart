import 'package:flutter/material.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:xlive_switch/xlive_switch.dart';

class LoggerDetailPage extends StatelessWidget {
    ApplicationLoggerData data;
   LoggerDetailPage(this.data);


  @override
  Widget build(BuildContext context) {
    return Container(
      child:Scaffold(
        appBar: AppBar(
          title: Text(data.functionName),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 10, horizontal: 12),
          child: ListView(
            
            children: [
             
             BuildInfoRow('Function Name :', data.functionName),
             BuildInfoRow('Sync Frequency :', data.syncFrequency),
             BuildInfoRow('Log Description :', data.logDescription),
             BuildInfoRow('Document No :', data.documentNo),
             BuildInfoRow('Log Code :', data.logCode),
             BuildInfoRow('Log Severity :', data.logSeverity),
             BuildInfoRow('Device ID :' , data.deviceId),                               
             BuildInfoRow('Export DateTime :', data.exportDateTime.toString()),
             BuildInfoRow('Export Status :', data.exportStatus),
             BuildInfoRow('Sync Error :', data.syncError),
             BuildInfoRow('Creator User Id :', data.userId.toString()), 
             BuildInfoRow('Tenant Id :', data.tenantId.toString(),),

            ],
          ),
        ) ,
        
      ),
    );
  }
 Widget BuildInfoRow(String title,String info){
   return   Padding(
     padding: const EdgeInsets.all(8.0),
     child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              title, 
                                              style: TextStyle(
                                                
                                                  color: Colors.black45,
                                                  fontWeight: FontWeight.bold,

                                                  fontSize: 18),
                                            ),
                                             Flexible(
                                               fit: FlexFit.loose                    ,
                                              child: Text(
                                                 info,softWrap: false,
                                               overflow: TextOverflow.fade,
                                                style: TextStyle(
                                                  
                                                    color: Colors.black45,
                                                    fontWeight: FontWeight.w500,

                                                    fontSize: 18),
                                              ),
                                            ),
                                            
                                          ],
                                        ),
   );
     
  }
}