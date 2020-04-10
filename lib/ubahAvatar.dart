import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangeAvatar extends StatefulWidget {
  @override
  _ChangeAvatarState createState() => _ChangeAvatarState();
}

Widget gridSection = new Expanded(
  flex: 1,
  child: new GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      shrinkWrap: true,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      padding: const EdgeInsets.all(4.0),
      children: <String>[
        'assets/Final Icons/CatIcon1.png',
        'assets/Final Icons/CatIcon3.png',
        'assets/Final Icons/CatIcon2.png',
        'assets/Final Icons/CatIcon4.png',
        'assets/Final Icons/DogIcon1.png',
        'assets/Final Icons/DogIcon3.png',
        'assets/Final Icons/RacoonIcon1.png',
      ].map((String url) {
        return new GridTile(child: new Image.network(url, fit: BoxFit.cover));
      }).toList()),
);

class _ChangeAvatarState extends State<ChangeAvatar> {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Ganti Avatar",
          style: TextStyle(fontFamily: 'Poppins-Bold'),
        ),
        centerTitle: true,
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/pattern.jpg"), fit: BoxFit.cover)),
        ),
        SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Pilih Avatar',
                    style:
                        TextStyle(fontFamily: 'Poppins-Medium', fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/Final Icons/CatIcon1.png',
                            width: 100,
                            height: 100,
                          ),
                          Image.asset(
                            'assets/Final Icons/CatIcon2.png',
                            width: 100,
                            height: 100,
                          ),
                          Image.asset(
                            'assets/Final Icons/CatIcon3.png',
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/Final Icons/CatIcon4.png',
                            width: 100,
                            height: 100,
                          ),
                          Image.asset(
                            'assets/Final Icons/DogIcon1.png',
                            width: 100,
                            height: 100,
                          ),
                          Image.asset(
                            'assets/Final Icons/DogIcon3.png',
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/Final Icons/RacoonIcon1.png',
                            width: 100,
                            height: 100,
                          ),

                        ],
                      ),
                    ],
                  )
                ]))
      ]),
    );
  }
}
