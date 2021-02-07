import 'package:coursework/LocalNotificationScreen.dart';
import 'package:flutter/material.dart';
import 'LocalNotificationScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocalNotificationScreen()
    );
  }
}

