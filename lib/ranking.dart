import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:math_wizard_mk2/signup.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:math_wizard_mk2/category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RankingScreen extends StatefulWidget {
  @override
  _RankingScreenState createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          leading: Text(
            "Ranking",
            style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.cyan),
          ),
          title: Text(
            "Ranking",
            style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/pattern.jpg"),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Container(
                    width: 350,
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            // offset: Offset(0.0, 0.75)
                          )
                        ],
                        // borderRadius: new BorderRadius.all(Radius.circular(15)),
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/avatar1.png',
                          width: 70,
                          height: 70,
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(height: 15),
                            Text(
                              '(Nama)',
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'Poppins-Medium'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                          width: 40,
                        ),
                        Image.asset(
                          'assets/trophy.png',
                          width: 35,
                          height: 35,
                        ),
                        Text('100',
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium', fontSize: 20)),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 15,
                ),
                Container(
                    width: 350,
                    height: 500,
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            // offset: Offset(0.0, 0.75)
                          )
                        ],
                        // borderRadius: new BorderRadius.all(Radius.circular(15)),
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                
                )
              ],
            ),
          )
        ]));
  }
}
