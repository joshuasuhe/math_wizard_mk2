import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas3bab7 extends StatefulWidget {
  @override
  _pilihmaterikelas3bab7State createState() => _pilihmaterikelas3bab7State();
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

class _pilihmaterikelas3bab7State extends State<pilihmaterikelas3bab7> {
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
              title: Text("Bab 7 - Bangun Datar & Sudut",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab7_BangunDatar%26Sudur%2FMengenalSudut.PNG?alt=media&token=4d031612-db3d-448f-a8f8-767b9be8f2da',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab7_BangunDatar%26Sudur%2FJenisSudut.PNG?alt=media&token=8f06bebe-7fac-4f0a-8052-82a078db1cd3',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab7_BangunDatar%26Sudur%2FSegitiga.PNG?alt=media&token=775b3ca2-fa1d-4ab5-8c37-dd501d6a5f92',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab7_BangunDatar%26Sudur%2FPersegi.PNG?alt=media&token=03527ae1-f487-484c-9bb7-dbaa7a730263',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas 3%2FBab7_BangunDatar%26Sudur%2FPersegiPanjang.PNG?alt=media&token=7463fabc-352d-4542-89fb-0decca366b69',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
