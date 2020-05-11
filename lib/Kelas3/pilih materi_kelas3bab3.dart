import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas3bab3 extends StatefulWidget {
  @override
  _pilihmaterikelas3bab3State createState() => _pilihmaterikelas3bab3State();
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

class _pilihmaterikelas3bab3State extends State<pilihmaterikelas3bab3> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Container(),
              centerTitle: true,
              title: Text("Bab 3 - Pembagian\n      & Perkalian",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab3_PembagianPerkalian%2FPerkalian100.PNG?alt=media&token=b255dacb-b911-4e8a-8d47-0dc51aa9ba5c',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab3_PembagianPerkalian%2FPemagian100.PNG?alt=media&token=467a31bf-4dd1-4897-9a3c-ec3f68fbf9cc',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab3_PembagianPerkalian%2FSoalPerkalian.PNG?alt=media&token=f2a6ec94-d095-4477-8410-e49534415002',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab3_PembagianPerkalian%2FSoalPembagian.PNG?alt=media&token=d209466b-3676-4413-92e8-ef2c37f31956',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
