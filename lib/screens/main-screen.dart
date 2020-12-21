import 'package:covid19_care/screens/home-screen.dart';
import 'package:covid19_care/screens/profile-screen.dart';
import 'package:covid19_care/screens/statics-screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  static const String id = 'main_screen';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    MainScreen(),
    Statics(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar:CurvedNavigationBar(
          index: _currentIndex,
          backgroundColor: Color(0xff242d42),
          animationCurve:Curves.fastLinearToSlowEaseIn,
          animationDuration: Duration(seconds: 2),
          height: MediaQuery.of(context).size.height*0.06,
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            Icon(FontAwesomeIcons.home , color: Color(0xff1f283c), ),
            Icon(Icons.format_align_left , color: Color(0xff1f283c),),
            Icon(Icons.person , color: Color(0xff1f283c),),
          ]
      ) ,
    );
  }




}