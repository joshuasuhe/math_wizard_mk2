import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bagian 1"),
          backgroundColor: Colors.cyan,
        ),
        body:Center(

            child: Container(
                  decoration: BoxDecoration(
                    image:DecorationImage(
                image: AssetImage("img/body.png"),
                    fit:BoxFit.cover,
              )),
            child :Column(
              children: <Widget>[
                SizedBox(height: 20),
                CustomProgressBar(200),
              Text("SOAL NOMOR 5"),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                    ),


                    ),
                  ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height:200.0,
                    margin: new EdgeInsets.all(10),
                    decoration: new BoxDecoration(
                        color: Colors.cyan,
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.circular(8.0)
                    ),
                    child:Column(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            child:Text("option1",textAlign: TextAlign.center),
                            padding:EdgeInsets.all(5),
                            width: 400,
                            height:30,
                                margin: EdgeInsets.fromLTRB(10,10,10,10),
                                decoration: BoxDecoration(
                                  color:Colors.white
                                ),
                          ),
                        ),
                      Flexible(
                        child: Container(
                          child:Text("option2",textAlign: TextAlign.center),
                          padding:EdgeInsets.all(5),
                          width: 400,
                        height:30,
                          margin: EdgeInsets.fromLTRB(10,10,10,10),
                          decoration: BoxDecoration(
                              color:Colors.white
                        ),
                      ),
                      ),
                        Flexible(
                          child: Container(
                            child:Text("option3",textAlign: TextAlign.center),
                            padding:EdgeInsets.all(5),
                            width: 400,
                            height:30,
                            margin: EdgeInsets.fromLTRB(10,10,10,10),
                            decoration: BoxDecoration(
                                color:Colors.white
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            child:Text("option4",textAlign: TextAlign.center),
                            padding:EdgeInsets.all(5),
                            width: 400,
                            height:30,
                            margin: EdgeInsets.fromLTRB(10,10,10,10),
                            decoration: BoxDecoration(
                                color:Colors.white
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                Container(
                  margin:EdgeInsets.all(10),
                  child: FlatButton.icon(
                    color: Colors.cyan,
                    icon: Icon(Icons.navigate_next), //`Icon` to display
                    label: Text('Next'), //`Text` to display
                    onPressed: () {
                      //perintah
                    },
                  ),
                ),
              ],

            ),
            )
        ),

            )
    );
  }
}




class CustomProgressBar extends StatelessWidget {
  final double width;

  CustomProgressBar(this.width);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.center ,
      children: <Widget>[
        Icon(Icons.book),
        Stack(
          children: <Widget>[
            Container(

              width: width,
              height: 10,
              decoration: BoxDecoration(color: Colors.grey,
              borderRadius: BorderRadius.circular(5)),
            ),
            Material(
            borderRadius: BorderRadius.circular(5),
              child: AnimatedContainer(

                height: 10,
                width: width * 0.5,
                duration:Duration(seconds: 1),

                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5)

                ),
              ),
            )
          ],
        )
      ],
    );


  }
}



