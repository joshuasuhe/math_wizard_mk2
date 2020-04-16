import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/home.dart';
import 'package:math_wizard_mk2/signup.dart';
import 'package:math_wizard_mk2/mainPage.dart';
import 'package:math_wizard_mk2/auth_services.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:math_wizard_mk2/auth_services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController(text: "");
    passwordController = TextEditingController(text: "");
  }

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              fontFamily: 'Poppins-Medium', fontSize: 15, color: Colors.white),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            controller: emailController,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins-Medium',
            ),
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
        ),
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
          child: TextField(
            controller: passwordController,
            obscureText: true,
            keyboardType: TextInputType.number,
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

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Lupa Password?',
          style: TextStyle(
              fontFamily: 'Poppins-Medium', fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }

  // Widget _buildRememberMeCheckbox() {
  //   return Container(
  //     height: 20.0,
  //     child: Row(
  //       children: <Widget>[
  //         Theme(
  //           data: ThemeData(unselectedWidgetColor: Colors.white),
  //           child: Checkbox(
  //             value: _rememberMe,
  //             checkColor: Colors.green,
  //             activeColor: Colors.white,
  //             onChanged: (value) {
  //               setState(() {
  //                 _rememberMe = value;
  //               });
  //             },
  //           ),
  //         ),
  //         Text(
  //           'Remember me',
  //           style: TextStyle(
  //               fontFamily: 'Poppins-Medium',
  //               fontSize: 15,
  //               color: Colors.white),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () async {
          if (emailController.text.isEmpty || passwordController.text.isEmpty) {
            AlertDialog(
              title: Text("Password /email kosong"),
            );
            return;
          }
          bool res = await AuthProvider()
              .signInWithEmail(emailController.text, passwordController.text);
          if (!res) {
            AlertDialog(title: Text("Login Failed"));
          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
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

  Widget _buildSignInGoogleButton() {
    return RaisedButton(
      onPressed: () async {
        bool res = await AuthProvider().loginWithGoogle();
        if (!res) Text("ERROR login dengan Google akun");
      },
      highlightElevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google-logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF527DAA),
                    fontFamily: "Poppins-Medium"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSignInFacebookButton() {
    return RaisedButton(
      onPressed: () async {
        bool res = await AuthProvider().loginWithGoogle();
        if (!res) Text("ERROR login dengan Facebook akun");
      },
      highlightElevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/facebook-logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Facebook',
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF527DAA),
                    fontFamily: "Poppins-Medium"),
              ),
            )
          ],
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
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    //   colors: [
                    //     Color(0xFF73AEF5),
                    //     Color(0xFF61A4F1),
                    //     Color(0xFF478DE0),
                    //     Color(0xFF398AE5),
                    //   ],
                    //   stops: [0.1, 0.4, 0.7, 0.9],
                    // ),
                    ),
              ),
              Container(
                alignment: Alignment.center,
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 28.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/logo.png",
                        width: 175,
                        height: 175,
                      ),

                      // _buildEmailTF(),
                      // SizedBox(
                      //   height: 20.0,
                      // ),
                      // _buildPasswordTF(),
                      // _buildForgotPasswordBtn(),
                      // Container(
                      //   child: Divider(
                      //     color: Colors.white,
                      //     thickness: 1,
                      //   ),
                      // ),
                      // SizedBox(
                      //   height:20.0,
                      // ),_buildLoginBtn(),
                      // SizedBox(
                      //   height: 20.0,
                      // ),
                      Container(
                      
                          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                          width: 500,
                          decoration:
                              BoxDecoration(border: Border.all(width: 1)),
                              
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Sign In",
                                style: TextStyle(
                                    fontFamily: "Poppins-Bold",
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              _buildSignInGoogleButton(),
                              SizedBox(
                                height: 10,
                              ),
                              _buildSignInFacebookButton(),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          )),
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
