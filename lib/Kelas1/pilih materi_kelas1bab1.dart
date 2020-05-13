import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas1bab1 extends StatefulWidget {
  @override
  _pilihmaterikelas1bab1State createState() => _pilihmaterikelas1bab1State();
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

class _pilihmaterikelas1bab1State extends State<pilihmaterikelas1bab1> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Container(),
              centerTitle: true,
              title: Text("Bab 1 - Bilangan Cacah 1-20",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab1_BilanganCacah%2FBilangan1sd5.PNG?alt=media&token=f5575338-a5a1-4db1-b0b4-0cd5e2a4a7ed',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab1_BilanganCacah%2FBilangan6sd10.PNG?alt=media&token=4e415def-16d5-49f3-a9fd-bd0d737664d7',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab1_BilanganCacah%2FBilangan11sd16.PNG?alt=media&token=bbf41ddb-6ede-4ed6-a939-d134ae50543c',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab1_BilanganCacah%2FBilangan17sd20.PNG?alt=media&token=ce96eac4-5911-42a8-bd12-c8c42c535167',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
