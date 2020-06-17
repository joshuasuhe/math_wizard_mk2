import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:math_wizard_mk2/materi.dart';
import 'package:math_wizard_mk2/signup.dart';
import 'package:math_wizard_mk2/ranking.dart';
import 'package:math_wizard_mk2/profile.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:math_wizard_mk2/category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Contact",
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
                  height: 75,
                  width: 350,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.facebook),
                      ),
                      GestureDetector(
                          child: Text("Facebook",
                              style: TextStyle(
                                  fontFamily: "Poppins-Bold",
                                  fontSize: 18,
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue)),
                          onTap: () {
                            launch(
                                "https://m.me/105365054516262?fbclid=IwAR1X5zjgtq2LztgoF7QUs7CB8ANzYEYoaCqMi-JG7mcRZEl-5RFaqtva6DE");
                          })
                    ],
                  ),
                ),
                SizedBox(height:15),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 3.0)],
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 75,
                  width: 350,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.instagram),
                      ),
                      GestureDetector(
                          child: Text("Instagram",
                              style: TextStyle(
                                  fontFamily: "Poppins-Bold",
                                  fontSize: 18,
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue)),
                          onTap: () {
                            launch(
                                "https://www.instagram.com/mathwizard111/");
                          })
                    ],
                  ),
                ),
                SizedBox(height:15),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [new BoxShadow(blurRadius: 3.0)],
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 75,
                  width: 350,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.whatsapp),
                      ),
                      GestureDetector(
                        
                          child: Text("Whatsapp",
                              style: TextStyle(
                                  fontFamily: "Poppins-Bold",
                                  fontSize: 18,
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue)),
                          onTap: () {
                            launch(
                                "whatsapp://send?phone=6282219330563");
                          })
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
