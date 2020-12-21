import 'package:covid19_care/styles-consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherLogIN extends StatelessWidget {
  final String text;
  final Function press;
  final IconData icon;
  final Color color, textColor , iconColor;
  const OtherLogIN({
    Key key,
    this.text,
    this.icon,
    this.iconColor,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,

      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric( horizontal: 40),
          color: color,
          onPressed: press,
          child: ListTile(
            title: Center(
              child: Text(text,
                style: TextStyle(color: textColor , fontWeight: FontWeight.bold , fontSize: 16),),
            ),
            leading: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
