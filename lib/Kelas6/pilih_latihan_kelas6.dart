import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/Kelas6/pilihlatihankelas6bab1.dart';
import 'package:math_wizard_mk2/Kelas6/pilihlatihankelas6bab2.dart';
import 'package:math_wizard_mk2/Kelas6/pilihlatihankelas6bab3.dart';
import 'package:math_wizard_mk2/Kelas6/pilihlatihankelas6bab4.dart';
import 'package:math_wizard_mk2/Kelas6/pilihlatihankelas6bab5.dart';
import 'package:math_wizard_mk2/Kelas6/pilihlatihankelas6bab6.dart';
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

class pilihlatihankelas6 extends StatefulWidget {
  @override
  _pilihlatihankelas6State createState() => _pilihlatihankelas6State();
}

class listDataItem extends StatelessWidget {
  String itemName;
  listDataItem(this.itemName);

  @override
  Widget build(BuildContext context) {
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

class _pilihlatihankelas6State extends State<pilihlatihankelas6> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Materi Kelas 6",
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Pilih Bab Pelajaran',
                  style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 20),
                ),
            SizedBox(
                  height: 15,
                ),
                InkWell( 
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return pilihlatihankelas6bab1();
                    }));
                },
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
                        Container(
              child: StreamBuilder(
                  stream:
                      Firestore.instance.collection("Kurikulum")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Text('Loading data.....');
                    return Text(
                      snapshot.data.documents[3]
                          ['BAB1'],
                      style:
                          TextStyle(fontFamily: "Poppins-Medium", fontSize: 15),
                    );
                  }),
            ), 
                      ],
                    ),
                  ),
                ),
       SizedBox(
                  height: 15,
                ),
                InkWell( 
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return pilihlatihankelas6bab2();
                    }));
                },
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
                        Container(
              child: StreamBuilder(
                  stream:
                      Firestore.instance.collection("Kurikulum")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Text('Loading data.....');
                    return Text(
                      snapshot.data.documents[3]
                          ['BAB2'],
                      style:
                          TextStyle(fontFamily: "Poppins-Medium", fontSize: 15),
                    );
                  }),
            ), 
                      ],
                    ),
                  ),
                ),
          SizedBox(
                  height: 15,
                ),
                InkWell( 
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return pilihlatihankelas6bab3();
                    }));
                },
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
                        Container(
              child: StreamBuilder(
                  stream:
                      Firestore.instance.collection("Kurikulum")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Text('Loading data.....');
                    return Text(
                      snapshot.data.documents[3]
                          ['BAB3'],
                      style:
                          TextStyle(fontFamily: "Poppins-Medium", fontSize: 15),
                    );
                  }),
            ), 
                      ],
                    ),
                  ),
                ),
      SizedBox(
                  height: 15,
                ),
                InkWell( 
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return pilihlatihankelas6bab4();
                    }));
                },
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
                        Container(
              child: StreamBuilder(
                  stream:
                      Firestore.instance.collection("Kurikulum")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Text('Loading data.....');
                    return Text(
                      snapshot.data.documents[3]
                          ['BAB4'],
                      style:
                          TextStyle(fontFamily: "Poppins-Medium", fontSize: 15),
                    );
                  }),
            ), 
                      ],
                    ),
                  ),
                ),
               SizedBox(
                  height: 15,
                ),
                InkWell( 
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return pilihlatihankelas6bab5();
                    }));
                },
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
                        Container(
              child: StreamBuilder(
                  stream:
                      Firestore.instance.collection("Kurikulum")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Text('Loading data.....');
                    return Text(
                      snapshot.data.documents[3]
                          ['BAB5'],
                      style:
                          TextStyle(fontFamily: "Poppins-Medium", fontSize: 15),
                    );
                  }),
            ), 
                      ],
                    ),
                  ),
                ),
               SizedBox(
                  height: 15,
                ),
                InkWell( 
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return pilihlatihankelas6bab6();
                    }));
                },
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
                        Container(
              child: StreamBuilder(
                  stream:
                      Firestore.instance.collection("Kurikulum")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Text('Loading data.....');
                    return Text(
                      snapshot.data.documents[3]
                          ['BAB6'],
                      style:
                          TextStyle(fontFamily: "Poppins-Medium", fontSize: 15),
                    );
                  }),
            ), 
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
