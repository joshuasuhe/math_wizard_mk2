import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/database_services.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:math_wizard_mk2/signup.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:math_wizard_mk2/category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:custom_switch/custom_switch.dart';
import 'package:firebase_database/firebase_database.dart';
import 'globals.dart' as globals;

class RankingScreen extends StatefulWidget {
  @override
  _RankingScreenState createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  bool status = false;



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
          style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white),
        ),
      ),
      body: Stack(
        children: <Widget>[
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
                          )
                        ],
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       (globals.currentimageemail == null)//menampilkan profil picture akun google
                                ? Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.black),
                                      image: DecorationImage(
                                          image: NetworkImage(globals.currentimagegoogle),
                                          fit: BoxFit.cover),
                                    ),
                                  )
                                : Container( //menampilkan profil picture akun email
                                    width: 55,
                                    height:55,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.black),
                                       image: DecorationImage(
                                          image: NetworkImage(globals.currentimageemail),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: globals.currentaccountemail == null
                              ? Text(
                                  globals.currentaccountgoogle,
                                  style:
                                      TextStyle(fontFamily: "Poppins-Medium"),
                                  overflow: TextOverflow.ellipsis,
                                )
                              : Text(
                                  globals.currentaccountemail,
                                  style:
                                      TextStyle(fontFamily: "Poppins-Medium"),
                                  overflow: TextOverflow.ellipsis,
                                ),
                        ),
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Image.asset(
                          'assets/trophy.png',
                          width: 45,
                          height: 45,
                        ),
                        globals.currentemailscore == null
                            ? Text(
                                globals.currentgooglescore.toString(),
                                style: TextStyle(fontFamily: "Poppins-Medium"),
                              )
                            : Text(
                                globals.currentemailscore.toString(),
                                style: TextStyle(fontFamily: "Poppins-Medium"),
                              ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: StreamBuilder(//mencari data di dalam firebase dengan urutan score dari besar ke kecil
                    stream: Firestore.instance
                        .collection("Users")
                        .orderBy("score", descending: true)
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Text('Loading Data..');
                      }
                      return Container(
                        height: 450,
                        width: 350,
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5.0,
                              )
                            ],
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Top 5",
                              style: TextStyle(
                                  fontFamily: "Poppins-Medium", fontSize: 30),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/gold-medal.png',
                                  width: 65,
                                  height: 65,
                                ),
                                Expanded(
                                  child: Text(
                                      snapshot.data.documents[0]['Username'],//username dengan score terbesar
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 18)),
                                ),
                              
                                Image.asset(
                                  'assets/trophy.png',
                                  width: 65,
                                  height: 65,
                                ),
                                Text(
                                  snapshot.data.documents[0]['score']//jumlah score terbesar
                                      .toString(),
                                  style: TextStyle(
                                      fontFamily: "Poppins-Medium",
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/silver-medal.png',
                                  width: 60,
                                  height: 60,
                                ),
                                Expanded(
                                  child: Text(
                                      snapshot.data.documents[1]['Username'],//username dengan score terbesar kedua
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium", fontSize: 16)),
                                ),
                               
                                Image.asset(
                                  'assets/trophy.png',
                                  width: 60,
                                  height: 60,
                                ),
                                Text(
                                  snapshot.data.documents[1]['score']//jumlah score terbesar kedua 
                                      .toString(),
                                  style:
                                      TextStyle(fontFamily: "Poppins-Medium", fontSize: 16),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/bronze-medal.png',
                                  width: 55,
                                  height: 55,
                                ),
                                Expanded(
                                  child: Text(
                                      snapshot.data.documents[2]['Username'],
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium", fontSize: 14)),
                                ),
                            
                                Image.asset(
                                  'assets/trophy.png',
                                  width: 55,
                                  height: 55,
                                ),
                                Text(
                                  snapshot.data.documents[2]['score']
                                      .toString(),
                                  style:
                                      TextStyle(fontFamily: "Poppins-Medium", fontSize: 14),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  'assets/four.png',
                                  width: 45,
                                  height: 45,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Text(
                                      snapshot.data.documents[3]['Username'],
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium")),
                                ),
                                Image.asset(
                                  'assets/trophy.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Text(
                                  snapshot.data.documents[3]['score']
                                      .toString(),
                                  style:
                                      TextStyle(fontFamily: "Poppins-Medium"),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  'assets/five.png',
                                  width: 45,
                                  height: 45,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Text(
                                      snapshot.data.documents[4]['Username'],
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium")),
                                ),
                                Image.asset(
                                  'assets/trophy.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Text(
                                  snapshot.data.documents[4]['score']
                                      .toString(),
                                  style:
                                      TextStyle(fontFamily: "Poppins-Medium"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Users {
  String username;
  String score;

  Users(this.username, this.score);
}

Widget UsersUI(String username, String score) {
  return new Card(
    elevation: 10.0,
    margin: EdgeInsets.all(15),
    child: new Container(
      padding: new EdgeInsets.all(15),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                username,
                style: TextStyle(fontFamily: "Poppins-Medium"),
              ),
              new Text(
                score,
                style: TextStyle(fontFamily: "Poppins-Medium"),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ),
  );
}

