import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3133.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3143.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3213.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3223.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3233.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3333.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3413.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3423.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3443.dart';
import 'package:random_string/random_string.dart';
import 'package:math_wizard_mk2/globals.dart' as globals;

class Quiz3442 extends StatefulWidget {
  @override
  _Quiz3442State createState() => _Quiz3442State();
}

class _Quiz3442State extends State<Quiz3442> {
  Map<String, Color> btnColor = {
    "option": Colors.cyan[50],
    "salah2": Colors.red[300],
    "benar2": Colors.green[300],
  };
  var random = new Random();
  num var1 = randomBetween(1, 10);
  num var2 = randomBetween(1, 10);
  num var4 = randomBetween(1, 10);
  String option1;
  String option2;
  String option3;

  void jawabanSalah() {
    // showSimpleNotification(
    //   Text("Jawaban Salah!"),
    //   background: Colors.red[300],
    // );
    setState(() {
      Timer(Duration(seconds: 1), () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Quiz3443();
            },
          ),
        );
      });
    });
  }

  void jawabanBenar() {
    // showSimpleNotification(
    //   Text("Jawaban Benar!"),
    //   background: Colors.green[300],
    // );
    setState(() {
      globals.currentbenar = globals.currentbenar + 1;
      Timer(Duration(seconds: 1), () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Quiz3443();
            },
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    num var3 = var1 * var2 * var4;
   List<String> soal = ["Bu Ani ingin menukarkan uang sepuluh ribuan ke pecahan uang logam lima ratusan. Maka nanti Bu Ani akan mendapatkan uang logam lima ratusan sebanyak …. buah"];
    option1 = "20";
    option2 = "10";
    option3 = "200";
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          centerTitle: true,
        title: Text("Latihan",
            style: TextStyle(color: Colors.white, fontFamily: 'Poppins-Bold')),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/img/body.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text("SOAL NOMOR 2",
                style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 20)),
            Container(
              height: 275,
              width: 350,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(3),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //////////////////////////////
                  ///          SOAL          ///
                  //////////////////////////////
                  Text(
                    soal.join(" ") ,
                    style:
                        TextStyle(fontFamily: "Poppins-Medium", fontSize: 18),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                  height: double.infinity,
                  margin: new EdgeInsets.all(10),
                  decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(8.0)),
                  child: Column(
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {
                            jawabanSalah();
                        },
                        child: Text(option2,
                            textAlign: TextAlign.center),
                        padding: EdgeInsets.all(5),
                        minWidth: 300,
                        height: 50,
                        color: btnColor["option"],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MaterialButton(
                        onPressed: () {
                            jawabanSalah();
                        },
                        child: Text(option3,
                            textAlign: TextAlign.center),
                        padding: EdgeInsets.all(5),
                        minWidth: 300,
                        height: 50,
                        color: btnColor["option"],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MaterialButton(
                        onPressed: () {
                            jawabanBenar();
                        },
                        child: Text(option1, textAlign: TextAlign.center),
                        padding: EdgeInsets.all(5),
                        minWidth: 300,
                        height: 50,
                        color: btnColor["option"],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  )),
            ),
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: RaisedButton.icon(
            //     color: Colors.cyan,
            //     icon: Icon(Icons.navigate_next),
            //     label: Text(
            //       'Next',
            //       style: TextStyle(
            //           color: Colors.white, fontFamily: 'Poppins-Medium'),
            //     ),
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) {
            //             return successpage();
            //           },
            //         ),
            //       );
            //     },
            //   ),
            // ),
            Row(
              children: <Widget>[
                // new Text(docRef.toString())
              ],
            )
          ],
        ),
      )),
    ));
  }
}
