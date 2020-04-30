import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_wizard_mk2/failed_page.dart';
import 'package:random_string/random_string.dart';
import 'package:math_wizard_mk2/success_page.dart';
import 'package:math_wizard_mk2/globals.dart' as globals;

class Quiz3145 extends StatefulWidget {
  @override
  _Quiz3145State createState() => _Quiz3145State();
}

class _Quiz3145State extends State<Quiz3145> {
  Map<String, Color> btnColor = {
    "option": Colors.cyan[50],
    "salah2": Colors.red[300],
    "benar2": Colors.green[300],
  };
  var random = new Random();
  var var1 = randomBetween(250, 300);
  var var2 = randomBetween(250, 300);
  var var3 = randomBetween(1, 5);
  int option1;
  int option2;
  int option3;

  void jawabanSalah() {
    // showSimpleNotification(
    //   Text("Jawaban Salah!"),
    //   background: Colors.red[300],
    // );
    setState(() {
      Timer(Duration(seconds: 1), () {
        if (globals.currentbenar >= 3) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return successpage();
              },
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return failedpage();
              },
            ),
          );
        }
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
        if (globals.currentbenar >= 3) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return successpage();
              },
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return failedpage();
              },
            ),
          );
        }
        ;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> soal = [
      "Santi membuat garis bilangan, Santi menulis huruf A di atas angka",
      var1.toString(),
      ". Kemudian Santi menulis huruf B di angka yang berada",
      var3.toString(),
      "titik sebelah kanan bilangan ",
      var1.toString(),
      ", berarti huruf B tersebut berada di atas bilangan …."
    ];
    option1 = var1 + var3;
    option2 = var1 + var3 - 1;
    option3 = var1 + var3 + 1;
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
            Text("SOAL NOMOR 5",
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
                    "Diketahui barisan bilangan 5 , 13 , A , 29 , B. Maka hasil dari A + B adalah …",
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
                          jawabanBenar();
                        },
                        child: Text("58",
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
                        child: Text("57",
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
                        child: Text("59",
                            textAlign: TextAlign.center),
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
