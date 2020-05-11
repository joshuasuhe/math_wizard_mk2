import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas3bab8 extends StatefulWidget {
  @override
  _pilihmaterikelas3bab8State createState() => _pilihmaterikelas3bab8State();
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

class _pilihmaterikelas3bab8State extends State<pilihmaterikelas3bab8> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Container(),
              centerTitle: true,
              title: Text("Bab 8 - Keliling, Luas Persegi\n        & Persegi Panjang",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab8_KelilingLuasPersegi%26PersegiPanjang%2FKelilingPersegi.PNG?alt=media&token=7cfe1f22-a751-405b-800a-35965968179d',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab8_KelilingLuasPersegi%26PersegiPanjang%2FLuasPersegi.PNG?alt=media&token=25c43ae2-9bd4-46b3-804e-a6b07abc371b',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab8_KelilingLuasPersegi%26PersegiPanjang%2FKelilingPersegiPanjang.PNG?alt=media&token=16a76ac3-44af-49ad-ae95-a1e0cc426a85',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab8_KelilingLuasPersegi%26PersegiPanjang%2FLuasPersegiPanjang.PNG?alt=media&token=aecf514e-1f42-41d5-b6bc-45eb92f8f7a4',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
