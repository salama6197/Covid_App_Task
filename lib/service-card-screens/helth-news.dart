import 'package:covid19_care/styles-consts/style-config.dart';
import 'package:flutter/material.dart';
class HealthNews extends StatelessWidget {
  static const String id = 'HealthNews';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Config.scaffoldColor,

    );
  }
}
