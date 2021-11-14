import 'package:flutter/material.dart';
import 'package:drawer/NavigatorApp.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/second',
      routes: {
        '/':(context)=>NavigatorApp(),
        '/second':(context)=>SecondApp()
      },
    );
  }
}






