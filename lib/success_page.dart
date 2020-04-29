import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/home.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:math_wizard_mk2/quiz_page.dart';
import 'package:math_wizard_mk2/signup.dart';
import 'package:math_wizard_mk2/ranking.dart';
import 'package:math_wizard_mk2/profile.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:math_wizard_mk2/category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:math_wizard_mk2/globals.dart' as globals;

import 'mainPage.dart';

class successpage extends StatefulWidget {
  @override
  _successpageState createState() => _successpageState();
}

class _successpageState extends State<successpage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Nilai',
          style: TextStyle(fontFamily: "Poppins-Bold"),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/img/body.png'),
              fit: BoxFit.cover,
            )),
            child: Stack(children: [
              Align(
                alignment: Alignment(0, -0.75),
                child: Image.asset(
                  'assets/img/success.png',
                  width: 300,
                  height: 300,
                ),
              ),
              Stack(children: [
                Align(
                    alignment: Alignment(0, 0.7),
                    child: RaisedButton.icon(
                      color: Colors.blueAccent,
                      icon: Icon(Icons.home),
                      label: Text(
                        'Home',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Poppins-Medium'),
                      ),
                      onPressed: () {
                        // globals.currentgooglescore = globals.currentgooglescore + (globals.currentbenar*2);
                        // globals.currentgooglecoin = globals.currentgooglecoin + (globals.currentbenar*2);
                        // globals.currentemailscore = globals.currentemailscore + (globals.currentbenar*2);
                        // globals.currentemailcoin = globals.currentemailcoin + (globals.currentbenar*2);
                        globals.currentbenar = 0;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MainPage();
                            },
                          ),
                        );
                      },
                    ))
              ]),
              Stack(children: [
                Align(
                    alignment: Alignment(0, 0.3),
                    child: Container(
                      width: 200,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Colors.cyan,
                          elevation: 10,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.grade, size: 50),
                                  title: Text(
                                    'Nilai:' +
                                        (globals.currentbenar * 20).toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins-Medium'),
                                  ),
                                ),
                                ListTile(
                                  leading: Image.asset('assets/trophy.png',
                                width: 50,
                                height: 50,),
                                  title: Text(
                                    '+' + (globals.currentbenar * 2).toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins-Medium'),
                                  ),
                                ),
                                ListTile(
                                  leading: Image.asset('assets/coin.png',
                                width: 50,
                                height: 50,),
                                  title: Text(
                                    '+' + (globals.currentbenar * 2).toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins-Medium'),
                                  ),
                                ),
                              ])),
                    ))
              ]),
            ])),
      ),
    );
  }
}
