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
