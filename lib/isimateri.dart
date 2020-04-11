import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/latihan.dart';
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

class halamanmateri extends StatefulWidget {
  @override
  _halamanmateriState createState() => _halamanmateriState();
}

class _halamanmateriState extends State<halamanmateri> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Colors.cyan,
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Materi Pelajaran",
                style:
                    TextStyle(color: Colors.black, fontFamily: "Poppins-Bold"),
              ),
              background:
                  Image.asset('assets/img/planet.jpg', fit: BoxFit.cover),
            ),
          ),
          SliverFillRemaining(
            child: new Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/body.png'),
                      fit: BoxFit.cover)),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: new SingleChildScrollView(
                        child: new Text(
                          '''1 Description that is too long in text format(data diambil dari firebase)  ''' +
                              '''2 Description that is too long in text format(data diambil dari firebase)  ''' +
                              '''3 Description that is too long in text format(data diambil dari firebase)  ''' +
                              ''' 4 Description that is too long in text format(data diambil dari firebase) ''' +
                              '''5 Description that is too long in text format(data diambil dari firebase)  ''' +
                              '''6 Description that is too long in text format(data diambil dari firebase)  ''' +
                              '''7 Description that is too long in text format(data diambil dari firebase)  ''' +
                              '''8 Description that is too long in text format(data diambil dari firebase) ''' +
                              '''9 Description that is too long in text format(data diambil dari firebase) ''' +
                              '''10 Description that is too long in text format(data diambil dari firebase)''',
                          style: new TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
