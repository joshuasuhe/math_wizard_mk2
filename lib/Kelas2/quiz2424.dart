import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:math_wizard_mk2/Kelas2/quiz2425.dart';
import 'package:random_string/random_string.dart';
import 'package:math_wizard_mk2/globals.dart' as globals;

class Quiz2424 extends StatefulWidget {
  @override
  _Quiz2424State createState() => _Quiz2424State();
}

class _Quiz2424State extends State<Quiz2424> {
  Map<String, Color> btnColor = {
    "option": Colors.cyan[50],
    "salah2": Colors.red[300],
    "benar2": Colors.green[300],
  };
  var random = new Random();
  num var1 = randomBetween(5, 10) * 4;
  num var2 = 4;
  var var3 = randomBetween(1, 50);
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
              return Quiz2425();
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
              return Quiz2425();
            },
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
   List<String> soal = [var1.toString(), ":", var2.toString(), "+", var3.toString()];
    option1 = var1 / var2 + var3;
    option2 = var1 / var2 + var3 - 1;
    option3 = var1 / var2 + var3 + 1;
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
            Text("SOAL NOMOR 4",
                style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 20)),
            Container(
              height: 300,
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
                  Image.network("https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/SOAL%2FKelas2%2FBAB4_BangunDatar%2Fsub2%2Fsoal4.png?alt=media&token=c9b5e00c-b65b-4305-b077-3776ef980591", height:200, width: 200),
                  Text(
                    "Lingkaran yang di gambar oleh Ali ….. dari lingkaran yang digambar oleh Dika",
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
                        child: Text("Lebih kecil",
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
                        child: Text("Lebih besar",
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
                        child: Text("Sama besar",
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