import 'package:covid19_care/regestire-screens/login/login-body.dart';
import 'package:covid19_care/styles-consts/consts.dart';
import 'package:covid19_care/styles-consts/style-config.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String id = "LogIn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.scaffoldColor,
      body: Body(),
    );
  }
}
