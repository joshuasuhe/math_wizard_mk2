import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: ()=>Navigator,),
                centerTitle: true,
                title: Text('BAB1 BilanganCacah 1-20',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: <Color>[
                    const Color(0xFF3366FF),
                    const Color(0xFF00CCFF)
                  ])),
                )),
            
            
            body: Center(
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("img/body.png"),
                      fit: BoxFit.cover,
                    )),
                    child: ListView(scrollDirection: Axis.vertical, 
                    children: <Widget>[
                      
                      Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                              child: new FittedBox(
                                  child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: Color(0x802196F3),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Container(
                                                  child: Text(
                                                "BilanganCacah 1-20 (1)",
                                                style: TextStyle(
                                                    color: Colors.cyan,
                                                    fontSize: 26.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    height: 200,
                                    child: ClipRRect(
                                      borderRadius:
                                          new BorderRadius.circular(24.0),
                                      child: Image(
                                          fit: BoxFit.contain,
                                          alignment: Alignment.topRight,
                                          image: AssetImage("img/pencil.png")),
                                    ),
                                  ),
                                ]),
                          )))),
                     
                      Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                              child: new FittedBox(
                                  child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: Color(0x802196F3),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Container(
                                                  child: Text(
                                                "BilanganCacah 1-20 (2)",
                                                style: TextStyle(
                                                    color: Colors.cyan,
                                                    fontSize: 26.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    height: 200,
                                    child: ClipRRect(
                                      borderRadius:
                                          new BorderRadius.circular(24.0),
                                      child: Image(
                                          fit: BoxFit.contain,
                                          alignment: Alignment.topRight,
                                          image: AssetImage("img/multiply.png")),
                                    ),
                                  ),
                                ]),
                          )))),
                           Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                              child: new FittedBox(
                                  child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: Color(0x802196F3),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Container(
                                                  child: Text(
                                                "BilanganCacah 1-20 (3)",
                                                style: TextStyle(
                                                    color: Colors.cyan,
                                                    fontSize: 26.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    height: 200,
                                    child: ClipRRect(
                                      borderRadius:
                                          new BorderRadius.circular(24.0),
                                      child: Image(
                                          fit: BoxFit.contain,
                                          alignment: Alignment.topRight,
                                          image: AssetImage("img/abacus.png")),
                                    ),
                                  ),
                                ]),
                          )
                          )
                          )
                          ),
                    ]
                    )
                    )
                    )
                    )
                    );
  }
}

