import 'package:flutter/material.dart';
import 'package:math_wizard_mk2/login.dart';

import 'mainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Math Wizard',
      debugShowCheckedModeBanner: false,
      home:LoginScreen(),
    );
  }
}