import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas2bab4 extends StatefulWidget {
  @override
  _pilihmaterikelas2bab4State createState() => _pilihmaterikelas2bab4State();
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

class _pilihmaterikelas2bab4State extends State<pilihmaterikelas2bab4> {
  
  @override
  Widget build(BuildContext context) {
        SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
          leading: Container(),
          centerTitle: true,
          title: Text(" Bab 4 - Bangun \nDatar Sederhana",
              style:
                  TextStyle(color: Colors.white, fontFamily: 'Poppins-Bold')),
          backgroundColor: Colors.cyan,
        ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                children: <Widget>[
 
                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab4_BangunDatarSederhana%2FMengelompokanBangunDatar.PNG?alt=media&token=a8a28b8d-9d3e-4773-93f0-1506f12806c1',
                     fit: BoxFit.cover),
 
                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab4_BangunDatarSederhana%2FPolaBangunDatar.PNG?alt=media&token=f27f0188-e7dd-49d3-8e71-95cf45c823f8',
                      fit: BoxFit.cover),

                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab4_BangunDatarSederhana%2FBangunSegitiga.PNG?alt=media&token=de62c428-a451-42e2-90c2-e136b6e0a647',
                      fit: BoxFit.cover),

                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab4_BangunDatarSederhana%2FBangunSegiempat.PNG?alt=media&token=b6892209-7b47-4095-8e05-e471ddcd2820',
                      fit: BoxFit.cover),

                      Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab4_BangunDatarSederhana%2FBangunPersegi.PNG?alt=media&token=018258da-9617-4515-8307-8f00e24e1a91',
                      fit: BoxFit.cover),
                ],
              ),
             ),
            )
           )
          );
  }
}