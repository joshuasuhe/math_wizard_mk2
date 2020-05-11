import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas2bab1 extends StatefulWidget {
  @override
  _pilihmaterikelas2bab1State createState() => _pilihmaterikelas2bab1State();
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

class _pilihmaterikelas2bab1State extends State<pilihmaterikelas2bab1> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Container(),
              centerTitle: true,
              title: Text("Bab 1 - Bilangan Cacah",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab1_BilanganCacah%2FMembacaBilangan101sd500.PNG?alt=media&token=a1c1210b-9a43-407e-bb41-568324014a7c',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab1_BilanganCacah%2FNilaiTempatBilangan.PNG?alt=media&token=2df98578-5a84-4ad7-8b45-8935b9947e25',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab1_BilanganCacah%2FPerbandinganNilai.PNG?alt=media&token=ca738677-6e38-4be3-845d-45ea9e04341b',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab1_BilanganCacah%2FMenyusunBilangan.PNG?alt=media&token=9251db9c-98a9-4c83-8548-fc733a3d8191',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab1_BilanganCacah%2FPenjumlahan.PNG?alt=media&token=a8bf1c09-eb8a-416d-a118-2982a6eaa606',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab1_BilanganCacah%2FPengurangan.PNG?alt=media&token=162425e7-bfcd-4cbf-853d-6a47e9112018',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
