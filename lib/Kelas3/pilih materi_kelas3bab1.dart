import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas3bab1 extends StatefulWidget {
  @override
  _pilihmaterikelas3bab1State createState() => _pilihmaterikelas3bab1State();
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

class _pilihmaterikelas3bab1State extends State<pilihmaterikelas3bab1> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Container(),
              centerTitle: true,
              title: Text("Bab 1 - Garis Bilangan",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab1_GarisBilangan%2FGarisBilangan.PNG?alt=media&token=3559b153-e24b-4c6d-881d-c4adb68aa2fb',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%203%2FBab1_GarisBilangan%2FPolaBilangan.PNG?alt=media&token=0cdfd71f-2c95-4143-946e-44664a098594',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
