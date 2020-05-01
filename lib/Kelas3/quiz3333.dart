import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3134.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3144.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3214.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3224.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3234.dart';
import 'package:math_wizard_mk2/Kelas3/quiz3334.dart';
import 'package:random_string/random_string.dart';
import 'package:math_wizard_mk2/globals.dart' as globals;

class Quiz3333 extends StatefulWidget {
  @override
  _Quiz3333State createState() => _Quiz3333State();
}

class _Quiz3333State extends State<Quiz3333> {
  Map<String, Color> btnColor = {
    "option": Colors.cyan[50],
    "salah2": Colors.red[300],
    "benar2": Colors.green[300],
  };

  var random = new Random();
  num var1 = randomBetween(1, 10);
  num var2 = randomBetween(1, 10);
  num var4 = randomBetween(1, 10);
  num option1;
  num option2;
  num option3;

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
              return Quiz3334();
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
              return Quiz3334();
            },
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    num var3 = var1 * var2 * var4;
    List<String> soal = ["12 X 3 : 6"];
    option1 = var4;
    option2 = var4 - 1;
    option3 = var4 + 1;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
            Text("SOAL NOMOR 3",
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
                  ///Text(
                   Text( soal.join(" "), style:
                        TextStyle(fontFamily: "Poppins-Medium", fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
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
                      //////////////////////////////
                      ///         OPTION 1       ///
                      //////////////////////////////
                      MaterialButton(
                        onPressed: () {
                            jawabanSalah();
                        },
                        child: Text("7", textAlign: TextAlign.center),
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

                      //////////////////////////////
                      ///         OPTION 2       ///
                      //////////////////////////////
                      MaterialButton(
                        onPressed: () {
                            jawabanSalah();
                        },
                        child: Text("8", textAlign: TextAlign.center),
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

                      //////////////////////////////
                      ///         OPTION 3       ///
                      //////////////////////////////
                      MaterialButton(
                        onPressed: () {
                            jawabanBenar();
                        },
                        child: Text("6", textAlign: TextAlign.center),
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
    );
  }
}
