import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:math_wizard_mk2/signup.dart';
import 'package:math_wizard_mk2/ranking.dart';
import 'package:math_wizard_mk2/profile.dart';
import 'package:math_wizard_mk2/pilih materi.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:math_wizard_mk2/category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class pilihmaterikelas1 extends StatefulWidget {
  @override
  _pilihmaterikelas1State createState() => _pilihmaterikelas1State();
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

class _pilihmaterikelas1State extends State<pilihmaterikelas1> {
  
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
          "Materi Kelas 1",
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
                      return pilihmaterikelas1bab1();
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
                        Text('BAB1 Bilangan Cacah', style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 15),),
                         
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
                        Text('BAB2 Penjumlahan Bilangan', style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 15),),
                         
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
                        Text('BAB3 Pengenalan Satuan', style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 15),),
                         
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
                        Text('BAB4 Bangun Ruang', style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 15),),
                         
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
                        Text('BAB5 Nilai Tempat dan Penggunaan', style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 15),),
                         
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
                        Text('BAB6 Pengukuran Berat', style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 15),),
                         
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
                        Text('BAB7 Bangun Datar', style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 15),),
                         
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
