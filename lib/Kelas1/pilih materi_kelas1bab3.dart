import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas1bab3 extends StatefulWidget {
  @override
  _pilihmaterikelas1bab3State createState() => _pilihmaterikelas1bab3State();
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

class _pilihmaterikelas1bab3State extends State<pilihmaterikelas1bab3> {
  
  @override
  Widget build(BuildContext context) {
        SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
          leading: Container(),
          centerTitle: true,
          title: Text("3 - Pengenalan Satuan\n   Waktu dan Panjang",
              style:
                  TextStyle(color: Colors.white, fontFamily: 'Poppins-Bold')),
          backgroundColor: Colors.cyan,
        ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                children: <Widget>[
 
                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab3_pengenalanSatuanWaktu%26Panjang%2FMengenalWaktu1.PNG?alt=media&token=7412581d-4b0e-4613-b04d-9c18870f2dba',
                     fit: BoxFit.cover),
 
                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab3_pengenalanSatuanWaktu%26Panjang%2FMengenalWaktu2.PNG?alt=media&token=96c5c91e-f4db-46b0-826e-6a78e3666cc9',
                      fit: BoxFit.cover),

                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab3_pengenalanSatuanWaktu%26Panjang%2FNamaHariJam.PNG?alt=media&token=6fd98346-24a0-489b-9af6-e886a066dccc',
                      fit: BoxFit.cover),

                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab3_pengenalanSatuanWaktu%26Panjang%2FPerbandinganJarak.PNG?alt=media&token=fffb01f9-85cb-48d4-bf0d-d76f4e1da3c4',
                      fit: BoxFit.cover),

                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab3_pengenalanSatuanWaktu%26Panjang%2FPerbandinganPanjang.PNG?alt=media&token=a2bd3b34-53bd-4cde-a240-cfca1b67880e',
                      fit: BoxFit.cover),

                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab3_pengenalanSatuanWaktu%26Panjang%2FPerbandinganUkuran.PNG?alt=media&token=6c4be43f-486a-4e44-b077-308c8ec07ea9',
                      fit: BoxFit.cover),
                ],
              ),
             ),
            )
           )
          );
  }
}