import 'package:flutter/material.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:provider/provider.dart';

import 'auth_services.dart';
import 'wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.FirebaseUserStream,
          child: MaterialApp(
        title: 'Math Wizard',
        debugShowCheckedModeBanner: false,
        home:Wrapper(),
      ),
    );
  }
}