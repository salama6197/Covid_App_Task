import 'dart:async';
import 'package:covid19_care/regestire-screens/login/login-screen.dart';
import 'package:covid19_care/styles-consts/style-config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushNamed(context,LoginScreen.id),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.scaffoldColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image:DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/gif-logo/globe.gif'),
            )
        ),
      ),
    );
  }
}
