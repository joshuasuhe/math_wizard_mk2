import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:math_wizard_mk2/Kelas2/pilih%20materi_kelas2bab1.dart';
import 'package:math_wizard_mk2/Kelas2/pilih%20materi_kelas2bab2.dart';
import 'package:math_wizard_mk2/Kelas2/pilih%20materi_kelas2bab3.dart';
import 'package:math_wizard_mk2/Kelas2/pilih%20materi_kelas2bab4.dart';

class pilihmaterikelas2 extends StatefulWidget {
  @override
  _pilihmaterikelas2State createState() => _pilihmaterikelas2State();
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

class _pilihmaterikelas2State extends State<pilihmaterikelas2> {
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
          "Materi Kelas 2",
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
                      return pilihmaterikelas2bab1();
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
                              stream: Firestore.instance
                                  .collection("Kurikulum")
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData)
                                  return Text('Loading data.....');
                                return Text(
                                  snapshot.data.documents[1]['BAB1'],
                                  style: TextStyle(
                                      fontFamily: "Poppins-Medium",
                                      fontSize: 15),
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
                      return pilihmaterikelas2bab2();
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
                              stream: Firestore.instance
                                  .collection("Kurikulum")
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData)
                                  return Text('Loading data.....');
                                return Text(
                                  snapshot.data.documents[1]['BAB2'],
                                  style: TextStyle(
                                      fontFamily: "Poppins-Medium",
                                      fontSize: 13),
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
                      return pilihmaterikelas2bab3();
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
                              stream: Firestore.instance
                                  .collection("Kurikulum")
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData)
                                  return Text('Loading data.....');
                                return Text(
                                  snapshot.data.documents[1]['BAB3'],
                                  style: TextStyle(
                                      fontFamily: "Poppins-Medium",
                                      fontSize: 15),
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
                      return pilihmaterikelas2bab4();
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
                              stream: Firestore.instance
                                  .collection("Kurikulum")
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData)
                                  return Text('Loading data.....');
                                return Text(
                                  snapshot.data.documents[1]['BAB4'],
                                  style: TextStyle(
                                      fontFamily: "Poppins-Medium",
                                      fontSize: 15),
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
