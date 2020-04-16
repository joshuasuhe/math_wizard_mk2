import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/auth_services.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class Kelas {
  int id;
  String name;

  Kelas(this.id, this.name);

  static List<Kelas> getCompanies() {
    return <Kelas>[
      Kelas(1, '1'),
      Kelas(2, '2'),
      Kelas(3, '3'),
      Kelas(4, '4'),
      Kelas(5, '5'),
      Kelas(6, '6')
    ];
  }
}

class _SignUpScreenState extends State<SignUpScreen> {
  List<Kelas> _companies = Kelas.getCompanies();
  List<DropdownMenuItem<Kelas>> _dropdownMenuItems;
  Kelas _selectedKelas;
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  TextEditingController confirmpasswordController =
      TextEditingController(text: "");
  
  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedKelas = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Kelas>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Kelas>> items = List();
    for (Kelas kelas in companies) {
      items.add(
        DropdownMenuItem(
          value: kelas,
          child: Text(kelas.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Kelas selectedCompany) {
    setState(() {
      _selectedKelas = selectedCompany;
      TextStyle(color: Colors.white);
    });
  }







  

  Widget _buildNamaTF() {
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
            controller: emailController,
            keyboardType: TextInputType.text,
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

  Widget _buildKelasTF() {
    List<String> _kelas = ['1', '2', '3', '4', '5', '6'];
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Kelas',
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Poppins-Medium'),
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            // decoration: kBoxDecorationStyle,
            height: 60.0,
            decoration: kBoxDecorationStyle,
            padding: EdgeInsets.only(left: 20),

            child: DropdownButton(
              value: _selectedKelas,
              items: _dropdownMenuItems,
              onChanged: onChangeDropdownItem,
              style: TextStyle(
                  fontFamily: 'Poppins-Medium', color: Colors.white54),
            ),
          )
        ]);
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

  Widget _buildConfirmPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Confirm Password',
          style: TextStyle(
              fontFamily: 'Poppins-Medium', fontSize: 15, color: Colors.white),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            controller: confirmpasswordController,
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
              hintText: 'Masukan Kembali Password ',
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
          try {
            await AuthServices.signUp(
                emailController.text, passwordController.text);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            }));
          } catch (e) {
            print(e);
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
                      // Text(
                      //   'Sign In',
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontFamily: 'Poppins-Medium',
                      //     fontSize: 20.0,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),

                      // SizedBox(height: 30.0),
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
                      _buildNamaTF(),
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
                      _buildConfirmPasswordTF(),
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



