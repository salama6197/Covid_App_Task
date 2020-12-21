import 'package:covid19_care/styles-consts/style-config.dart';
import 'package:flutter/material.dart';

class ChatWithDoctor extends StatelessWidget {
  static const String id = 'chatwithdoctor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.scaffoldColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'top Doctors'.toUpperCase(),
            style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w900),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
