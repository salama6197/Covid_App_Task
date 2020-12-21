import 'package:covid19_care/regestire-screens/signup/signup-body.dart';
import 'package:covid19_care/styles-consts/style-config.dart';
import 'package:flutter/material.dart';
import 'package:covid19_care/styles-consts/consts.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = "SignUp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Config.scaffoldColor,
      body: Body(),
    );
  }
}
