import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:math_wizard_mk2/signup.dart';
import 'package:math_wizard_mk2/ranking.dart';
import 'package:math_wizard_mk2/profile.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:math_wizard_mk2/category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LatihanScreen extends StatefulWidget {
  @override
  _LatihanScreenState createState() => _LatihanScreenState();
}

class listDataItem extends StatelessWidget {
  String itemName;
  listDataItem(this.itemName);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
    return Card(
      child: Container(
        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Text(itemName[0]),
            ),
            Text(itemName,
                style: TextStyle(fontSize: 15, fontFamily: 'Poppins-Medium'))
          ],
        ),
      ),
    );
  }
}

class _LatihanScreenState extends State<LatihanScreen> {
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
          "Latihan",
          style: TextStyle(fontFamily: 'Poppins-Bold'),
        ),
        centerTitle: true,
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg1.png"), fit: BoxFit.cover)),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Pilih Kelas',
                style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                // onTap: (),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 1.0)],
                      // border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 75,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        'Kelas 1',
                        style: TextStyle(
                            fontFamily: 'Poppins-Medium', fontSize: 15),
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 35,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                // onTap: (),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 1.0)],
                      // border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 75,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        'Kelas 2',
                        style: TextStyle(
                            fontFamily: 'Poppins-Medium', fontSize: 15),
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 35,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                // onTap: (),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 1.0)],
                      // border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 75,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        'Kelas 3',
                        style: TextStyle(
                            fontFamily: 'Poppins-Medium', fontSize: 15),
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 35,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                // onTap: (),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 1.0)],
                      // border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 75,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        'Kelas 4',
                        style: TextStyle(
                            fontFamily: 'Poppins-Medium', fontSize: 15),
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 35,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                // onTap: (),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 1.0)],
                      // border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 75,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        'Kelas 5',
                        style: TextStyle(
                            fontFamily: 'Poppins-Medium', fontSize: 15),
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 35,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                // onTap: (),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 1.0)],
                      // border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 75,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        'Kelas 6',
                        style: TextStyle(
                            fontFamily: 'Poppins-Medium', fontSize: 15),
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 35,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
