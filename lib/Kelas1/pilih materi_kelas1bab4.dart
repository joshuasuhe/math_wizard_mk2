import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas1bab4 extends StatefulWidget {
  @override
  _pilihmaterikelas1bab4State createState() => _pilihmaterikelas1bab4State();
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

class _pilihmaterikelas1bab4State extends State<pilihmaterikelas1bab4> {
  
  @override
  Widget build(BuildContext context) {
        SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
          leading: Container(),
          centerTitle: true,
          title: Text("Bab 4 - Bangun Ruang",
              style:
                  TextStyle(color: Colors.white, fontFamily: 'Poppins-Bold')),
          backgroundColor: Colors.cyan,
        ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                children: <Widget>[
 
                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab4_BangunRuang%2FBentuk1.PNG?alt=media&token=10cf264d-f335-4c92-a3e1-693f80da3db0',
                     fit: BoxFit.cover),
 
                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab4_BangunRuang%2FBentuk2.PNG?alt=media&token=cc295ac1-e1d7-4027-855a-6137e694b60e',
                      fit: BoxFit.cover),

                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab4_BangunRuang%2FBentuk3.PNG?alt=media&token=8c080816-c632-4156-9e99-0c7130fd7e50',
                      fit: BoxFit.cover),
                ],
              ),
             ),
            )
           )
          );
  }
}