import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/database_services.dart';
import 'package:math_wizard_mk2/main.dart';
import 'package:math_wizard_mk2/mainPage.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'globals.dart' as globals;
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:math_wizard_mk2/auth_services.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController usernameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
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
          "Ubah Profil",
          style: TextStyle(fontFamily: 'Poppins-Bold'),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 3.0)],
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  padding: EdgeInsets.all(30),
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Nama Baru",
                        style: TextStyle(fontFamily: "Poppins-Medium"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: kBoxDecorationStyle,
                        height: 40.0,
                        child: TextField(
                          controller: usernameController,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            fontFamily: 'Poppins-Medium',
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 10, bottom: 7),
                            hintText: 'Masukan Nama Baru',
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontSize: 12,
                                color: Colors.black38),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 350,
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(),
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 5.0,
                          onPressed: () {
                            Alert(
                              context: context,
                              type: AlertType.info,
                              title: "Profil akan diganti",
                              desc: "Apakah setuju profil diganti?",
                              buttons: [
                                DialogButton(
                                  child: Text(
                                    "YA",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () {
                                    AuthProvider.updateUser(
                                        globals.currentidaccount,
                                        displayname: usernameController.text,
);
                                    Alert(
                                        context: context,
                                        type: AlertType.success,
                                        title: 'Profil sudah diganti',
                                        buttons: [
                                          DialogButton(
                                              child: Text(
                                                "oke",
                                                style: TextStyle(
                                                    fontFamily:
                                                        "Poppins-Medium",
                                                    color: Colors.white),
                                              ),
                                              onPressed: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return EditProfileScreen();
                                                }));
                                              })
                                        ]).show();
                                  },
                                  width: 120,
                                ),
                                DialogButton(
                                  child: Text(
                                    "Tidak",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  width: 120,
                                )
                              ],
                            ).show();
                          },
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Colors.white,
                          child: Text(
                            'UBAH PROFIL',
                            style: TextStyle(
                              color: Color(0xFF527DAA),
                              letterSpacing: 1.5,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins-Medium',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
