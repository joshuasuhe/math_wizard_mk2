import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: Icon(Icons.arrow_back),
              backgroundColor:Colors.cyan ,
              expandedHeight: 200.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Materi Pelajaran",
                  style: TextStyle(color: Colors.black),
                ),
                background: Image.asset('img/planet.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverFillRemaining(
              child: new Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('img/body.png'),fit: BoxFit.cover
                )
                ),child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 new Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: new SingleChildScrollView(
                child: new Text(
                  '''1 Description that is too long in text format(data diambil dari firebase)  '''+
                  '''2 Description that is too long in text format(data diambil dari firebase)  '''+ 
                  '''3 Description that is too long in text format(data diambil dari firebase)  '''+ 
                  ''' 4 Description that is too long in text format(data diambil dari firebase) '''+ 
                   '''5 Description that is too long in text format(data diambil dari firebase)  '''+ 
                   '''6 Description that is too long in text format(data diambil dari firebase)  '''+ 
                   '''7 Description that is too long in text format(data diambil dari firebase)  '''+ 
                   '''8 Description that is too long in text format(data diambil dari firebase) '''+ 
                   '''9 Description that is too long in text format(data diambil dari firebase) '''+ 
                   '''10 Description that is too long in text format(data diambil dari firebase)''',     
                  style: new TextStyle(
                    fontSize: 16.0, color: Colors.black,
                  ),
                ),
              ),
            ),
                 ),
                 ],
              ),),
            )
          ],
        ),
      ),
    );
  }
}
