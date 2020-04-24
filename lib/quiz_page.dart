import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:math_wizard_mk2/signup.dart';
import 'package:math_wizard_mk2/ranking.dart';
import 'package:math_wizard_mk2/profile.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:math_wizard_mk2/category.dart';
import 'package:math_wizard_mk2/success_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class halamankuis extends StatefulWidget {
  @override
  _halamankuisState createState() => _halamankuisState();
}

class _halamankuisState extends State<halamankuis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("BilanganCacah 1-20",
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
            CustomProgressBar(200),
            Text("SOAL NOMOR 5",
                style: TextStyle(fontFamily: 'Poppins-Medium')),
            Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(3),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                  height: 200.0,
                  margin: new EdgeInsets.all(10),
                  decoration: new BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(8.0)),
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          child: Text("option1", textAlign: TextAlign.center),
                          padding: EdgeInsets.all(5),
                          width: 400,
                          height: 30,
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text("option2", textAlign: TextAlign.center),
                          padding: EdgeInsets.all(5),
                          width: 400,
                          height: 30,
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text("option3", textAlign: TextAlign.center),
                          padding: EdgeInsets.all(5),
                          width: 400,
                          height: 30,
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text("option4", textAlign: TextAlign.center),
                          padding: EdgeInsets.all(5),
                          width: 400,
                          height: 30,
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: RaisedButton.icon(
                color: Colors.cyan,
                icon: Icon(Icons.navigate_next),
                label: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Medium'),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return successpage();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class CustomProgressBar extends StatelessWidget {
  final double width;

  CustomProgressBar(this.width);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.book),
        Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(5)),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              child: AnimatedContainer(
                height: 10,
                width: width * 0.5,
                duration: Duration(seconds: 1),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(5)),
              ),
            )
          ],
        )
      ],
    );
  }
}
