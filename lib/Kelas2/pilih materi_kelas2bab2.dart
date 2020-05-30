import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas2bab2 extends StatefulWidget {
  @override
  _pilihmaterikelas2bab2State createState() => _pilihmaterikelas2bab2State();
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

class _pilihmaterikelas2bab2State extends State<pilihmaterikelas2bab2> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: Container(),
              centerTitle: true,
              title: Text("Bab 2 - Pengukuran\n   Panjang & Berat",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab2_PengukuranPanjangBerat%2FMembacaWaktuTepat.PNG?alt=media&token=54a671ed-09a1-4886-b7be-cf4ca6533669',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab2_PengukuranPanjangBerat%2FMembacaWaktuSetengah.PNG?alt=media&token=d13e06f9-ce92-4326-8a30-f40db7f60e06',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab2_PengukuranPanjangBerat%2FMembacaWaktuDigital.PNG?alt=media&token=7d4c609e-366e-4bcc-97d2-d09a6167bc06',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab2_PengukuranPanjangBerat%2FAlatUkurPanjang.PNG?alt=media&token=8f2a427d-280b-4be6-90fc-73eda7931223',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab2_PengukuranPanjangBerat%2FPerbandinganPanjang.PNG?alt=media&token=ec1874d6-1c83-4883-9319-c16653e6b33e',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab2_PengukuranPanjangBerat%2FAlatUkurBerat.PNG?alt=media&token=f7243369-74b5-4cde-8a33-300da0e95e85',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab2_PengukuranPanjangBerat%2FPerbandinganBerat.PNG?alt=media&token=5eb5d04d-c215-4532-996c-3ee264a5bc2b',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
