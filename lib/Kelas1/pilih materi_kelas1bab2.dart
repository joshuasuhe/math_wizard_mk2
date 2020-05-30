import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilihmaterikelas1bab2 extends StatefulWidget {
  @override
  _pilihmaterikelas1bab2State createState() => _pilihmaterikelas1bab2State();
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

class _pilihmaterikelas1bab2State extends State<pilihmaterikelas1bab2> {
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
              title: Text("Bab 2 - Penjumlahan Bilangan",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins-Bold')),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab2_PenjumlahanBilangan%2FPenjumlahan10.PNG?alt=media&token=502aeb2b-3c65-46e0-80d9-7576cfdcabc2',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab2_PenjumlahanBilangan%2FPengurangan10.PNG?alt=media&token=c7739c19-b1a4-486f-b5ee-a4adc4cb6c1a',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab2_PenjumlahanBilangan%2FPenjumlahan20.PNG?alt=media&token=3a30a23a-bfb3-4b3d-980e-608349faea8a',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%201%2FBab2_PenjumlahanBilangan%2FPengurangan20.PNG?alt=media&token=0efeec96-c959-4cf5-9645-990714f8baf6',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            )));
  }
}
