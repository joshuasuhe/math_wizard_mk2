import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_wizard_mk2/login.dart';
import 'package:math_wizard_mk2/signup.dart';
import 'package:math_wizard_mk2/utilities/constants.dart';
import 'package:math_wizard_mk2/category.dart';
import 'package:math_wizard_mk2/profile.dart';
import 'package:math_wizard_mk2/home.dart';
import 'package:math_wizard_mk2/ranking.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
    final listPages = <Widget>[
      HomeScreen(),
      RankingScreen(),
      ProfileScreen()
    ];

    final navbarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.star),
              title: new Text('Ranking'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile'))
          ];

    final navbar = BottomNavigationBar(
      // backgroundColor: Colors.cyan,
      
      items: navbarItems,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );

    return Scaffold(
      bottomNavigationBar: navbar,
      body: listPages[_selectedIndex],
    );
  }
}
