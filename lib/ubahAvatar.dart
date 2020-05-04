import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/auth_services.dart';
import 'package:math_wizard_mk2/main.dart';
import 'globals.dart' as globals;

class ChangeAvatar extends StatefulWidget {
  @override
  _ChangeAvatarState createState() => _ChangeAvatarState();
}

class _ChangeAvatarState extends State<ChangeAvatar> {
  String gambar1 =
      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon1.png?alt=media&token=59932303-aada-4d47-ba1b-dc09f32b35c8';
  String gambar2 =
      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon2.png?alt=media&token=f535aa8c-2e6b-46c3-9176-d003a1ff17b5';
  String gambar3 =
      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon3.png?alt=media&token=664cda7a-7ee7-46e3-833f-d88f63710835';
  String gambar4 =
      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon4.png?alt=media&token=b200c426-18dc-4c79-873c-6b272b6b4885';
  String gambar5 =
      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FDogIcon1.png?alt=media&token=cc97ec7a-24bd-406a-bc66-f2b5622e963d';
  String gambar6 =
      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FDogIcon2.png?alt=media&token=4126a792-9ac2-489f-96d1-c10b4843a762';
  String gambar7 =
      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FDogIcon3.png?alt=media&token=fece9732-3576-47a3-a91c-31d56dd94fcb';
  String gambar8 =
      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FRacoonIcon1.png?alt=media&token=06f58821-e4ee-4ad4-800a-9c9362e78be4';
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
          onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MainScreen();
          })),
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
                          InkWell(
                              onTap: () {
                                AuthProvider.updateUserimage(
                                    globals.currentidaccount,
                                    image: gambar1);
                                  if (globals.currentimageemail == null) {
                                  globals.currentimagegoogle = gambar1;
                                } else {
                                  globals.currentimageemail = gambar1;
                                }
                              },
                              child: Container(
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon1.png?alt=media&token=59932303-aada-4d47-ba1b-dc09f32b35c8',
                                  width: 100,
                                  height: 100,
                                ),
                              )),
                          InkWell(
                              onTap: () {
                                AuthProvider.updateUserimage(
                                    globals.currentidaccount,
                                    image: gambar2);
                                   if (globals.currentimageemail == null) {
                                  globals.currentimagegoogle = gambar2;
                                } else {
                                  globals.currentimageemail = gambar2;
                                }
                              },
                              child: Container(
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon2.png?alt=media&token=f535aa8c-2e6b-46c3-9176-d003a1ff17b5',
                                  width: 100,
                                  height: 100,
                                ),
                              )),
                          InkWell(
                              onTap: () {
                                AuthProvider.updateUserimage(
                                    globals.currentidaccount,
                                    image: gambar3);
                                   if (globals.currentimageemail == null) {
                                  globals.currentimagegoogle = gambar3;
                                } else {
                                  globals.currentimageemail = gambar3;
                                }
                              },
                              child: Container(
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon3.png?alt=media&token=664cda7a-7ee7-46e3-833f-d88f63710835',
                                  width: 100,
                                  height: 100,
                                ),
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                AuthProvider.updateUserimage(
                                    globals.currentidaccount,
                                    image: gambar4);
                                   if (globals.currentimageemail == null) {
                                  globals.currentimagegoogle = gambar4;
                                } else {
                                  globals.currentimageemail = gambar4;
                                }
                              },
                              child: Container(
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon4.png?alt=media&token=b200c426-18dc-4c79-873c-6b272b6b4885',
                                  width: 100,
                                  height: 100,
                                ),
                              )),
                          InkWell(
                              onTap: () {
                                AuthProvider.updateUserimage(
                                    globals.currentidaccount,
                                    image: gambar5);
                                  if (globals.currentimageemail == null) {
                                  globals.currentimagegoogle = gambar5;
                                } else {
                                  globals.currentimageemail = gambar5;
                                }
                              },
                              child: Container(
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FDogIcon1.png?alt=media&token=cc97ec7a-24bd-406a-bc66-f2b5622e963d',
                                  width: 100,
                                  height: 100,
                                ),
                              )),
                          InkWell(
                              onTap: () {
                                AuthProvider.updateUserimage(
                                    globals.currentidaccount,
                                    image: gambar6);
                                   if (globals.currentimageemail == null) {
                                  globals.currentimagegoogle = gambar6;
                                } else {
                                  globals.currentimageemail = gambar6;
                                }
                              },
                              child: Container(
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FDogIcon2.png?alt=media&token=4126a792-9ac2-489f-96d1-c10b4843a762',
                                  width: 100,
                                  height: 100,
                                ),
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                AuthProvider.updateUserimage(
                                    globals.currentidaccount,
                                    image: gambar7);
                                if (globals.currentimageemail == null) {
                                  globals.currentimagegoogle = gambar7;
                                } else {
                                  globals.currentimageemail = gambar7;
                                }
                              },
                              child: Container(
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FDogIcon3.png?alt=media&token=fece9732-3576-47a3-a91c-31d56dd94fcb',
                                  width: 100,
                                  height: 100,
                                ),
                              )),
                          InkWell(
                              onTap: () {
                                AuthProvider.updateUserimage(
                                    globals.currentidaccount,
                                    image: gambar8);
                               if (globals.currentimageemail == null) {
                                  globals.currentimagegoogle = gambar8;
                                } else {
                                  globals.currentimageemail = gambar8;
                                } 
                              },
                              child: Container(
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FRacoonIcon1.png?alt=media&token=06f58821-e4ee-4ad4-800a-9c9362e78be4',
                                  width: 100,
                                  height: 100,
                                ),
                              )),
                        ],
                      ),
                    ],
                  )
                ]))
      ]),
    );
  }
}
