import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas2bab3 extends StatefulWidget {
  @override
  _pilihmaterikelas2bab3State createState() => _pilihmaterikelas2bab3State();
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

class _pilihmaterikelas2bab3State extends State<pilihmaterikelas2bab3> {
  
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
          title: Text("Bab 3 - Perkalian\n    & Pembagian",
              style:
                  TextStyle(color: Colors.white, fontFamily: 'Poppins-Bold')),
          backgroundColor: Colors.cyan,
        ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                children: <Widget>[
 
                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab3_PerkalianPembagian%2FMengenalArtiPerkalian.PNG?alt=media&token=aa21e185-d56a-45ce-b62f-a7244dd8ad3d',
                     fit: BoxFit.cover),
 
                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab3_PerkalianPembagian%2FMengenalArtiPembagian.PNG?alt=media&token=4acad27f-6a32-400d-b123-b73d7547b823',
                      fit: BoxFit.cover),

                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab3_PerkalianPembagian%2FHubunganPerkalianPembagian.PNG?alt=media&token=f76889c4-fc69-4632-9bb4-decbe7dfc14f',
                      fit: BoxFit.cover),

                  Image.network('https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%202%2FBab3_PerkalianPembagian%2FMenyelesaikanOperasiGabung.PNG?alt=media&token=8bd648d2-bf02-4147-b7be-c9a9cdf1f18a',
                      fit: BoxFit.cover),
                ],
              ),
             ),
            )
           )
          );
  }
}