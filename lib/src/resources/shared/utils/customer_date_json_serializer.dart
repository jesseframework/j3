import 'package:moor/moor.dart';
 class CustomSerializer extends ValueSerializer { 
   @override 
   T fromJson<T>(json) { 
     if (T == DateTime) { 
       return DateTime.parse(json.toString()) as T; 
     } else if (json == 'set to null') { 
       return null; 
     } else { 
       return json as T; 
     } 
   } 
  
   @override 
   toJson<T>(T value) { 
     if (T == DateTime) { 
       return (value as DateTime).toIso8601String(); 
     } else if (value == null) { 
       return 'set to null'; 
     } else { 
       return value; 
     } 
   } 
 } 
