import 'package:covid19_care/styles-consts/style-config.dart';
import 'package:flutter/material.dart';
class GeneralCheckUp extends StatelessWidget {
  static const String id = 'GeneralCheckUp';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Config.scaffoldColor,

    );
  }
}
