import 'package:RoadAssistance/vrify/verify.dart';
import 'package:flutter/material.dart';
// import 'package:tico/vrify/verify.dart';

import 'dashboard/dashboard.dart';
import 'log/phone.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'dashboard':(context) => DashboardUi()
    },
  ));
}