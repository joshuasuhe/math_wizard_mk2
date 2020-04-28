import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/mainPage.dart';

void main(
) => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title:Text('Nilai'),
          backgroundColor: Colors.blueGrey[900],
          
          ),
          body: Center(
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('img/body.png'),
                  fit: BoxFit.cover,
                )),
                child: Stack(children: [
                  Align(
                    alignment: Alignment(0, -2),
                    child: Image.asset(
                      'img/failed.png',
                      width: 500,
                      height: 500,
                    ),
                  ),
                  Stack(children: [
                    Align(
                        alignment: Alignment(0, 0.7),
                        child: RaisedButton.icon(
                          color: Colors.blueAccent,
                          icon: Icon(Icons.home),
                          label: Text('Home'),
                          onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MainPage();
                            },
                          ),
                        );},
                        ))
                  ]),
                  Stack(children: [
                    Align(
                        alignment: Alignment(0, 0.3),
                        child: Container(
                          width: 200,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.cyan,
                              elevation: 10,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const ListTile(
                                      leading: Icon(Icons.grade, size: 50),
                                      title: Text('Nilai:<60',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ])),
                        ))
                  ]),
                ])),
          ),
        ));
  }
}
