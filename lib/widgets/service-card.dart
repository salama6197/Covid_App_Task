import 'file:///C:/Users/salam/Desktop/flutter/covid19_care/lib/styles-consts/style-config.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Function onTap;
  ServiceCard({this.color, this.title, this.icon,this.onTap});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap:onTap ,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: width*0.37,
          margin: EdgeInsets.only(bottom: 10),
          child: Stack(
            alignment: Alignment.bottomLeft,
            fit: StackFit.loose,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  child: Container(
                    height: height*0.23,
                    width: width*0.33,
                    padding: EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(title , style: Config.serviceStyle,),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(12),
                  color: color,
                  child: Container(
                    height: height*0.123,
                    width: height*0.123,
                    child: Center(
                      child: Icon(icon , size: 44 , color: Colors.white,),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
