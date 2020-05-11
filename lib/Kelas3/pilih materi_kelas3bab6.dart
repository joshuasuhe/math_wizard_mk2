import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas3bab6 extends StatefulWidget {
  @override
  _pilihmaterikelas3bab6State createState() => _pilihmaterikelas3bab6State();
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

class _pilihmaterikelas3bab6State extends State<pilihmaterikelas3bab6> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Container(),
              centerTitle: true,
              title: Text("Bab 6 - Pecahan",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab6_Pecahan%2FMengenalPecahan.PNG?alt=media&token=5ffa5221-f1e8-48a8-b187-da9c0d59e561',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab6_Pecahan%2FPerbandinganGarisBilangan.PNG?alt=media&token=16517f08-7d87-4720-8a8e-8f26a5dca64a',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab6_Pecahan%2FPerbandinganPecahan.PNG?alt=media&token=50d29d60-ddcb-4498-996f-367386ddbe65',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab6_Pecahan%2FOperasiPecahan.PNG?alt=media&token=36950ac0-859e-490b-b8cc-072d507381ba',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
