import 'file:///C:/Users/salam/Desktop/flutter/covid19_care/lib/styles-consts/style-config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StatusCard extends StatelessWidget {
  final String country;
  final int infected , dead , cured , active;
  StatusCard({this.country,this.active,this.cured,this.dead,this.infected});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: Colors.white,
      margin: EdgeInsets.all(8),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(12),
        shadowColor: Colors.black,
        child: Container(
          width: width*0.9,
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [
                  Text(country , style: Config.statsTitleStyle,),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Config.primaryColor.withOpacity(0.2),
                    ),
                    child: Icon(FontAwesomeIcons.chevronDown,
                      color: Config.blueColor,
                      size: 14,
                    ),
                  )
                ],
              ),
              SizedBox(height: height*0.006),
              Divider(
                color: Colors.black12,
                thickness: 1,
              ),
              SizedBox(height: height*0.006),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 6),
                margin: EdgeInsets.only(bottom: 12),
                width: width,
                decoration: BoxDecoration(
borderRadius: BorderRadius.circular(4),
                  color: Config.redColor.withOpacity(0.2)
                ),
                child: Text('Infected : $infected',style: Config.infectedStyle,),

              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 6),
                margin: EdgeInsets.only(bottom: 12),
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Config.greenColor.withOpacity(0.2)
                ),
                child: Text('cured : $cured',style: Config.curedStyle,),

              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 6),
                margin: EdgeInsets.only(bottom: 12),
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey[400]
                ),
                child: Text('dead : $dead',style: Config.deadStyle,),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
