import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas3bab2 extends StatefulWidget {
  @override
  _pilihmaterikelas3bab2State createState() => _pilihmaterikelas3bab2State();
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

class _pilihmaterikelas3bab2State extends State<pilihmaterikelas3bab2> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Container(),
              centerTitle: true,
              title: Text("Bab 2 - Penjumlahan\n    & Pengurangan",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab2_PenjumlahanPengurangan%2FMenulisBentukPanjang.PNG?alt=media&token=6b08e6f4-3194-417c-a21a-d537ccf2ac34',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab2_PenjumlahanPengurangan%2FPenjumlahanTeknikBiasa.PNG?alt=media&token=04038121-634f-4f85-8af1-43746c5e07ca',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab2_PenjumlahanPengurangan%2FPenjumlahanTeknikMeminjam.PNG?alt=media&token=1570a4eb-985f-4123-ad23-779a2c8b63e5',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab2_PenjumlahanPengurangan%2FPenguranganTeknikBiasa.PNG?alt=media&token=8e553312-b157-4443-9349-7cc8d60c0a72',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab2_PenjumlahanPengurangan%2FPenguranganTeknikMeminjam.PNG?alt=media&token=f1d0d526-f882-423f-a3fd-dc17b2166524',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
