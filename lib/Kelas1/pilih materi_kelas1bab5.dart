import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas1bab5 extends StatefulWidget {
  @override
  _pilihmaterikelas1bab5State createState() => _pilihmaterikelas1bab5State();
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

class _pilihmaterikelas1bab5State extends State<pilihmaterikelas1bab5> {
  
  @override
  Widget build(BuildContext context) {
        SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
          leading: Container(),
          centerTitle: true,
          title: Text("Bab 5 - Nilai Tempat\n   dan Penggunaan",
              style:
                  TextStyle(color: Colors.white, fontFamily: 'Poppins-Bold')),
          backgroundColor: Colors.cyan,
        ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                children: <Widget>[
 
                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab5_NilaiTempat%26Pengguna%2FBilanganBanyakBenda.PNG?alt=media&token=f7722ad7-3266-403e-8bea-7da5ef42a2af',
                     fit: BoxFit.cover),
 
                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab5_NilaiTempat%26Pengguna%2FPenetuanNilaiTempat.PNG?alt=media&token=c7ae2be0-cfa4-454b-89ed-ccf40e5af14d',
                      fit: BoxFit.cover),

                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab5_NilaiTempat%26Pengguna%2FPenulisanJumlahPuluhan.PNG?alt=media&token=e093c3cf-8255-4154-b709-46530ab3ab5b',
                      fit: BoxFit.cover),

                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab5_NilaiTempat%26Pengguna%2FMengurutkanBilangan.PNG?alt=media&token=7232bd18-cc44-4d79-b8ab-3540d866a310',
                      fit: BoxFit.cover),
                ],
              ),
             ),
            )
           )
          );
  }
}