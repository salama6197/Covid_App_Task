import 'package:covid19_care/styles-consts/style-config.dart';
import 'package:flutter/material.dart';

class ViewAllButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  ViewAllButton({this.title, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10,right: 8),
      child: Material(
        borderRadius: BorderRadius.circular(5),
        child: FlatButton(
          color: Colors.white,
          onPressed: onPressed,
          child: Text(title , style: Config.serviceStyle,),
        ),
      ),
    );
  }
}
