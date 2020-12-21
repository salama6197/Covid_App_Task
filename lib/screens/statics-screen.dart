import 'package:covid19_care/styles-consts/style-config.dart';
import 'package:flutter/material.dart';

class Statics extends StatefulWidget {
  static const String id  = 'static-screen';
  @override
  _StaticsState createState() => _StaticsState();
}

class _StaticsState extends State<Statics> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Config.scaffoldColor,
    );
  }
}
