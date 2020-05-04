import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:math_wizard_mk2/materi.dart';
import 'package:math_wizard_mk2/signup.dart';
import 'package:math_wizard_mk2/ranking.dart';
import 'package:math_wizard_mk2/profile.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:math_wizard_mk2/category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "About",
          style: TextStyle(fontFamily: 'Poppins-Bold'),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15),
                  // color: Colors.white,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 3.0)],
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/logo.png", height: 175, width: 175),
                      SizedBox(height: 5),
                      Text(
                        "Math Wizard",
                        style:
                            TextStyle(fontFamily: "Poppins-Bold", fontSize: 22),
                      ),
                      Text(
                        "Version 1.0",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium", fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.all(15),
                  // color: Colors.white,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 3.0)],
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Team",
                        style:
                            TextStyle(fontFamily: "Poppins-Bold", fontSize: 22),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Joshua Suherlan - 1772013",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium", fontSize: 18),
                      ),
                      Text(
                        "Avinash - 1772030",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium", fontSize: 18),
                      ),
                      Text(
                        "Kelvin Susanto - 1772039",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium", fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.all(15),
                  // color: Colors.white,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 3.0)],
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Source Code",
                          style: TextStyle(
                              fontFamily: "Poppins-Bold", fontSize: 22),
                        ),
                        SizedBox(height: 5),
                        GestureDetector(
                            child: Text("Github",
                                style: TextStyle(
                                    fontFamily: "Poppins-Bold", fontSize: 22,
                                    decoration: TextDecoration.underline,
                                    color: Colors.blue)),
                            onTap: () {
                              launch("https://github.com/joshuasuhe/math_wizard_mk2");
                            })
                      ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
