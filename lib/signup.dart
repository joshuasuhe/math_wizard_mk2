import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/auth_services.dart';
import 'package:math_wizard_mk2/database_services.dart';
import 'package:math_wizard_mk2/mainPage.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'globals.dart' as globals;
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;

///Enkripsi Password
generateMd5(String data) {
  var content = new Utf8Encoder().convert(data);
  var md5 = crypto.md5;
  var digest = md5.convert(content);
  return hex.encode(digest.bytes);
}

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  TextEditingController usernameController = TextEditingController(text: "");
  static String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = new RegExp(pattern);
  String userUsername;
  String userPassword;
  String userEmail;
  int userScore = 0;
  int userCoin = 0;

  crudMethods crudObj = new crudMethods();

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontFamily: 'Poppins-Medium'),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            onChanged: (value) {
              this.userEmail = value;
            },
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontFamily: 'Poppins-Medium', color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              hintText: 'Masukan Email',
              hintStyle: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 15,
                  color: Colors.white54),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildUsernameTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Username',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontFamily: 'Poppins-Medium'),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            onChanged: (value) {
              this.userUsername = value;
            },
            controller: usernameController,
            keyboardType: TextInputType.text,
            style: TextStyle(fontFamily: 'Poppins-Medium', color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              hintText: 'Masukan Username',
              hintStyle: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 15,
                  color: Colors.white54),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              fontFamily: 'Poppins-Medium', fontSize: 15, color: Colors.white),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            onChanged: (value) {
              this.userPassword = value;
            },
            controller: passwordController,
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins-Medium',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Masukan Password',
              hintStyle: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 15,
                  color: Colors.white54),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpBtn() {
    return Container(
      padding: EdgeInsets.symmetric(),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () async {
          if (emailController.text == '' ||
              passwordController.text == '' ||
              usernameController.text == '') {
            Alert(
              context: context,
              type: AlertType.error,
              title: "Sign up Gagal",
              desc: "Email atau password atau username masih kosong.",
              buttons: [
                DialogButton(
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Navigator.pop(context),
                  width: 120,
                )
              ],
            ).show();
          } else if (passwordController.text.length <= 6) {
            Alert(
              context: context,
              type: AlertType.error,
              title: "Sign up Gagal",
              desc: "Password harus lebih dari 6 karakter",
              buttons: [
                DialogButton(
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Navigator.pop(context),
                  width: 120,
                )
              ],
            ).show();
          } else if (!regExp.hasMatch(emailController.text)) {
            Alert(
              context: context,
              type: AlertType.error,
              title: "Sign up Gagal",
              desc: "Email tidak valid",
              buttons: [
                DialogButton(
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Navigator.pop(context),
                  width: 120,
                )
              ],
            ).show();
          }  else {
            print(usernameController);
            bool res = await AuthProvider().signUpWithEmail(
                emailController.text,
                passwordController.text,
                usernameController.text);
            if (globals.eror == true) {
              Alert(
                context: context,
                type: AlertType.error,
                title: "Sign up Gagal",
                desc: "Email sudah terdaftar",
                buttons: [
                  DialogButton(
                    child: Text(
                      "OK",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    width: 120,
                  )
                ],
              ).show();
            } else {
              Alert(
                context: context,
                type: AlertType.success,
                title: "Sign up Berhasil",
                desc: "Sekarang akun mu bisa digunakan",
                buttons: [
                  DialogButton(
                    child: Text(
                      "OK",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () async {
                      AuthProvider().signInWithEmail(
                          emailController.text, passwordController.text);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPage();
                      }));
                    },
                    width: 120,
                  )
                ],
              ).show();

              if (!res) {
                AlertDialog(title: Text("Sign up Failed"));
              }
              Map<String, dynamic> userData = {
                'Email': this.userEmail,
                'Username': this.userUsername,
                'Password': generateMd5(this.userPassword),
                'coin': this.userCoin,
                'score': this.userScore,
                'image':
                    'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Profil%20Picture%2FCatIcon1.png?alt=media&token=59932303-aada-4d47-ba1b-dc09f32b35c8',
              };
              crudObj.addData(userData);
            }
          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'DAFTAR',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins-Medium',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/bg.png'), fit: BoxFit.cover)
           
                    ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 65.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "DAFTAR AKUN",
                        style: TextStyle(
                            fontFamily: 'Poppins-Bold',
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      _buildEmailTF(),
                      SizedBox(
                        height: 25.0,
                      ),
                      _buildUsernameTF(),
                      SizedBox(
                        height: 25.0,
                      ),
                      //       DropdownButton(
                      //   value: _selectedKelas,
                      //   items: _dropdownMenuItems,
                      //   onChanged: onChangeDropdownItem,
                      // ),

                      _buildPasswordTF(),
                      SizedBox(
                        height: 25.0,
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildSignUpBtn()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
