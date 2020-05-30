import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas3bab5 extends StatefulWidget {
  @override
  _pilihmaterikelas3bab5State createState() => _pilihmaterikelas3bab5State();
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

class _pilihmaterikelas3bab5State extends State<pilihmaterikelas3bab5> {
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
              title: Text("   Bab 5 - Pengukuran \nPanjang, Berat, Waktu",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab5_PengukuranPanjanWaktuBerat%2FMembacaJamSetengah.PNG?alt=media&token=9a4bbfbe-2c7a-4c05-9fb1-9661a26f0e2e',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab5_PengukuranPanjanWaktuBerat%2FMembacaJam15Menit.PNG?alt=media&token=1108b388-147c-49d9-ba87-b302d6009d51',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab5_PengukuranPanjanWaktuBerat%2FHubunganWaktu.PNG?alt=media&token=24c1813c-7179-4fc3-ac9e-5e37de832ee8',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab5_PengukuranPanjanWaktuBerat%2FAlatUkurPanjang.PNG?alt=media&token=ca3d1e49-d981-45d3-ac1d-1305e87478ce',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab5_PengukuranPanjanWaktuBerat%2FHubunganPanjang.PNG?alt=media&token=eb4eb220-2d2c-43b0-a8d6-61e3d3d3e7f3',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab5_PengukuranPanjanWaktuBerat%2FAlatUkurBerat.PNG?alt=media&token=a9ea5624-0b90-4840-9eff-887c1442d54d',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab5_PengukuranPanjanWaktuBerat%2FHubunganBerat.PNG?alt=media&token=0bfa89bb-7e0e-4759-95f6-fbcbe796a120',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
