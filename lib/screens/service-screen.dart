import 'package:covid19_care/screens/quick-option-card.dart';
import 'package:covid19_care/service-card-screens/chat-with-doctor.dart';
import 'package:covid19_care/service-card-screens/genral-check-up.dart';
import 'package:covid19_care/service-card-screens/get-doctor-advice.dart';
import 'package:covid19_care/service-card-screens/helth-news.dart';
import 'package:covid19_care/styles-consts/style-config.dart';
import 'package:covid19_care/widgets/service-card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceScreen extends StatelessWidget {
  static const String id = 'service-screen';
  Config measures = Config();
  double width, secNum, height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.scaffoldColor,
      appBar: AppBar(
        backgroundColor: Config.appBarColor,
        centerTitle: true,
        title: Text('Quick Options'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          children: [
            ServiceCard(
                onTap: () => Navigator.pushNamed(context, GeneralCheckUp.id),
                title: 'General\nCheck Up',
                icon: FontAwesomeIcons.heartbeat,
                color: Config.blueColor),
            ServiceCard(
                onTap: () => Navigator.pushNamed(context, ChatWithDoctor.id),
                title: 'Chat\nWith Doctor',
                icon: FontAwesomeIcons.commentMedical,
                color: Config.redColor),
            ServiceCard(
                onTap: () => Navigator.pushNamed(context, HealthNews.id),
                title: 'Health\nNews',
                icon: FontAwesomeIcons.rss,
                color: Config.orangeColor),
            ServiceCard(
                onTap: () => Navigator.pushNamed(context, DoctorAdvice.id),
                title: 'Get Doctor\nAdvice',
                icon: FontAwesomeIcons.userMd,
                color: Config.greenColor),
            QuickOptionCard(
                onTap: () {},
                title: 'Emergency Numbers',
                image: 'assets/quick-options/phone.png',
                color: Colors.teal),
            QuickOptionCard(
                onTap: () {},
                title: 'Prevention\n     ',
                image: 'assets/quick-options/prevention.png',
                color: Config.blueColor),
            QuickOptionCard(
                onTap: () {},
                title: ' Symptoms\n     ',
                image: 'assets/quick-options/symptoms.png',
                color: Colors.amber),
            QuickOptionCard(
                onTap: () {},
                title: 'Infection\nMap',
                image: 'assets/quick-options/map.png',
                color: Colors.blueGrey),
            QuickOptionCard(
                onTap: () {},
                title: 'Details\n     ',
                image: 'assets/quick-options/details.png',
                color: Colors.blueGrey),
            QuickOptionCard(
                onTap: () {},
                title: 'About \n     ',
                image: 'assets/quick-options/info.png',
                color: Colors.blueGrey),
          ],
        ),
      ),
    );
  }
}
