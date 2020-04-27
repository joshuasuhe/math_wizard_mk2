import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                "Materi Perhitungan Bilangan Bulat ",
                style:
                    TextStyle(color: Colors.black, fontFamily: "Poppins-Bold"),
              ),
              background:
                  Image.asset('assets/img/planet.jpg', fit: BoxFit.cover),
            ),
          ),
          SliverFillRemaining(
            child: new Column(
              children: <Widget>[GestureDetector
              (child:Hero(
                  tag: 'capture1',
                  child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%206%2FBAB1%20Perhitungan%20Bilangan%20Bulat%2FCapture1.PNG?alt=media&token=fbce3743-efb2-4cd7-a8f3-145666d97656'),
                ),
                onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen1();
                  }));


                }),
                GestureDetector(
                  child:Hero(
                  tag: 'capture2',
                  child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%206%2FBAB1%20Perhitungan%20Bilangan%20Bulat%2FCapture2.PNG?alt=media&token=e27b5985-1775-49f5-8e74-48c3052a111e')
                ),   onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen2();
                  }));
                
                
                })
                
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DetailScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'capture1',
            child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%206%2FBAB1%20Perhitungan%20Bilangan%20Bulat%2FCapture1.PNG?alt=media&token=fbce3743-efb2-4cd7-a8f3-145666d97656',
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}


class DetailScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'capture2',
            child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/tes1-baa07.appspot.com/o/Materi%2FKelas%206%2FBAB1%20Perhitungan%20Bilangan%20Bulat%2FCapture2.PNG?alt=media&token=e27b5985-1775-49f5-8e74-48c3052a111e'
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}