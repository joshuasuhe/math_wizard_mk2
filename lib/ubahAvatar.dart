import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'globals.dart' as globals;

class ChangeAvatar extends StatefulWidget {
  @override
  _ChangeAvatarState createState() => _ChangeAvatarState();
}

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
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon1.png?alt=media&token=59932303-aada-4d47-ba1b-dc09f32b35c8',
                            width: 100,
                            height: 100,
                          ),
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon2.png?alt=media&token=f535aa8c-2e6b-46c3-9176-d003a1ff17b5',
                            width: 100,
                            height: 100,
                          ),
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon3.png?alt=media&token=664cda7a-7ee7-46e3-833f-d88f63710835',
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon4.png?alt=media&token=b200c426-18dc-4c79-873c-6b272b6b4885',
                            width: 100,
                            height: 100,
                          ),
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FDogIcon1.png?alt=media&token=cc97ec7a-24bd-406a-bc66-f2b5622e963d',
                            width: 100,
                            height: 100,
                          ),
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FDogIcon2.png?alt=media&token=4126a792-9ac2-489f-96d1-c10b4843a762',
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FDogIcon3.png?alt=media&token=fece9732-3576-47a3-a91c-31d56dd94fcb',
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
