import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:math_wizard_mk2/about.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:math_wizard_mk2/signup.dart';
import 'package:math_wizard_mk2/ranking.dart';
import 'package:math_wizard_mk2/profile.dart';
import 'package:math_wizard_mk2/ubahAvatar.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:math_wizard_mk2/category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'contact.dart';
import 'edit_profile.dart';
import 'wrapper.dart';

class ProfileScreen extends StatefulWidget {
  
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}


class _ProfileScreenState extends State<ProfileScreen> {
  
  static FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn()async{
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;


     final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    final FirebaseUser = null;


    
    return FirebaseUser;
  }

  void _signOut(){
    googleSignIn.signOut();
    print("user Signed Out");
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.cyan,
        //   leading: Text(
        //     "Profil",
        //     style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.cyan),
        //   ),
        //   title: Text(
        //     "Profil",
        //     style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.black),
        //   ),
        //   centerTitle: true,
        // ),
        body: Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/pattern.jpg"), fit: BoxFit.cover)),
      ),
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                height: 250.0,
                width: double.infinity,
                decoration: new BoxDecoration(
                  color: Colors.cyan,
                  boxShadow: [new BoxShadow(blurRadius: 10.0)],
                  // borderRadius: new BorderRadius.vertical(
                  //     bottom: new Radius.elliptical(
                  //         MediaQuery.of(context).size.width, 50.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '(Nama)',
                      style:
                          TextStyle(fontSize: 20, fontFamily: 'Poppins-Medium'),
                    ),
                    Image.asset(
                      'assets/avatar1.png',
                      width: 100,
                      height: 100,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ChangeAvatar();
                        }));
                      },
                      child: Text(
                        'Ubah Avatar',
                        style: TextStyle(
                            fontFamily: 'Poppins-Bold', fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/trophy.png',
                          width: 20,
                          height: 20,
                        ),
                        Text('100',
                            style: TextStyle(fontFamily: 'Poppins-Medium')),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/coin.png',
                          width: 20,
                          height: 20,
                        ),
                        Text('100',
                            style: TextStyle(fontFamily: 'Poppins-Medium'))
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 75,
                    width: 350,
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [new BoxShadow(blurRadius: 3.0)],
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Penyelesaian',
                          style: TextStyle(fontFamily: 'Poppins-Medium'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        LinearPercentIndicator(
                          width: 300,
                          animation: true,
                          lineHeight: 15.0,
                          animationDuration: 2500,
                          percent: 0.8,
                          center: Text(
                            "80.0%",
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium', fontSize: 10),
                          ),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EditProfileScreen();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [new BoxShadow(blurRadius: 3.0)],
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      height: 75,
                      width: 350,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(10)),
                          Text(
                            'Ubah Profil',
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium', fontSize: 15),
                          ),
                          SizedBox(
                            width: 205,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 35,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ContactScreen();
                        }));
                      },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [new BoxShadow(blurRadius: 3.0)],
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      height: 75,
                      width: 350,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(10)),
                          Text(
                            'Hubungi Kami',
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium', fontSize: 15),
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 35,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return AboutScreen();
                        }));
                      },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [new BoxShadow(blurRadius: 3.0)],
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      height: 75,
                      width: 350,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(10)),
                          Text(
                            'Tentang Math Wizard',
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium', fontSize: 15),
                          ),
                          SizedBox(
                            width: 125,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 35,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 350,
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(),
                    width: 350,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: () {
                        _signOut();
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Wrapper()));
                      },
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.red,
                      child: Text(
                        'LOGOUT',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins-Medium',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            )
          ],
        ),
      )
    ]));
  }
}
