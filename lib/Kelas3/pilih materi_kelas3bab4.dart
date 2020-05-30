import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas3bab4 extends StatefulWidget {
  @override
  _pilihmaterikelas3bab4State createState() => _pilihmaterikelas3bab4State();
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

class _pilihmaterikelas3bab4State extends State<pilihmaterikelas3bab4> {
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
              title: Text("Bab 4 - Uang",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab4_Uang%2FMataUangLogam.PNG?alt=media&token=54df3c1c-de37-4cd1-a27a-c4bc147a190b',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab4_Uang%2FMataUangKertas.PNG?alt=media&token=f5a8e8b3-ff3a-4e87-9871-a2cda4e2a635',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab4_Uang%2FPenjumlahanUang.PNG?alt=media&token=4d1e6d39-63f0-412e-9a94-6f90531fef93',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
