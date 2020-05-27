import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas1bab6 extends StatefulWidget {
  @override
  _pilihmaterikelas1bab6State createState() => _pilihmaterikelas1bab6State();
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

class _pilihmaterikelas1bab6State extends State<pilihmaterikelas1bab6> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Container(),
              centerTitle: true,
              title: Text("Bab 6 - Pengukuran Berat",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab6_PengukuranBerat%2FMengukurBeratBenda.PNG?alt=media&token=b0a33f4d-44b7-49bf-8363-56f07f9e5a1b',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab6_PengukuranBerat%2FPerbandinganBerat.PNG?alt=media&token=9636c49c-8e02-42e9-a44e-09cc30911e81',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
