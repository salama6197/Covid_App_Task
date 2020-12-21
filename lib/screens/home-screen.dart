import 'package:covid19_care/drawer-screens/about.dart';
import 'package:covid19_care/drawer-screens/details.dart';
import 'package:covid19_care/drawer-screens/emergency-numbers.dart';
import 'package:covid19_care/drawer-screens/infection-map.dart';
import 'package:covid19_care/drawer-screens/prevention.dart';
import 'package:covid19_care/drawer-screens/symptoms.dart';
import 'package:covid19_care/screens/profile-screen.dart';
import 'package:covid19_care/screens/service-screen.dart';
import 'package:covid19_care/service-card-screens/chat-with-doctor.dart';
import 'package:covid19_care/service-card-screens/genral-check-up.dart';
import 'package:covid19_care/service-card-screens/get-doctor-advice.dart';
import 'package:covid19_care/service-card-screens/helth-news.dart';
import 'package:covid19_care/styles-consts/style-config.dart';
import 'package:covid19_care/widgets/service-card-button.dart';
import 'package:covid19_care/widgets/service-card.dart';
import 'package:covid19_care/widgets/statics_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _selectedState = 'All State';
  String _headerTitle = 'Salama Nafei';
  List<String> _items = [
    'All State',
    'Andaman and Nicobar Islands',
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chandigarh',
    'Chhattisgarh',
    'Dadra and Nagar Haveli',
    'Daman and Diu',
    'Delhi',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jammu',
    'Jharkhand',
    'Karnataka',
    'Kashmir',
    'Kerala',
    'Ladakh',
    'Lakshadweep',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Puducherry',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttarakhand',
    'Uttar Pradesh',
    'West Bengal'
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Config.scaffoldColor,
      // drawer: _buildDrawer(width, height, _headerTitle),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Config.appBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[_buildMainTitle(), _buildMyLocation()],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: height * 0.09,
              ),
              _buildAppTitle('What are you locking for?'),
              SizedBox(
                height: height * 0.06,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ViewAllButton(
                    title: 'View All',
                    onPressed: ()=>Navigator.pushNamed(context, ServiceScreen.id),
                  ),
                  SizedBox(height: height * 0.01,),
                  Container(
                    height: height * 0.26,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ServiceCard(
                            onTap: () =>
                                Navigator.pushNamed(context, GeneralCheckUp.id),
                            title: 'General\nCheck Up',
                            icon: FontAwesomeIcons.heartbeat,
                            color: Config.blueColor),
                        ServiceCard(
                            onTap: () =>
                                Navigator.pushNamed(context, ChatWithDoctor.id),
                            title: 'Chat\nWith Doctor',
                            icon: FontAwesomeIcons.commentMedical,
                            color: Config.redColor),
                        ServiceCard(
                            onTap: () =>
                                Navigator.pushNamed(context, HealthNews.id),
                            title: 'Health\nNews',
                            icon: FontAwesomeIcons.rss,
                            color: Config.orangeColor),
                        ServiceCard(
                            onTap: () =>
                                Navigator.pushNamed(context, DoctorAdvice.id),
                            title: 'Get Doctor\nAdvice',
                            icon: FontAwesomeIcons.userMd,
                            color: Config.greenColor),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.06,
              ),

              _buildAppTitle('Disease: Covid-19'),
              SizedBox(
                height: height * 0.04,
              ),
              StatusCard(
                cured: 232546,
                dead: 23325,
                infected: 255871,
                country: _selectedState.toLowerCase(),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildAppTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  _buildMainTitle() {
    return RichText(
      text: TextSpan(
          text: 'Covid',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          children: <TextSpan>[
            TextSpan(
                text: '-Care',
                style: TextStyle(
                  color: Color(0XFFEE716C),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ))
          ]),
    );
  }

  _buildMyLocation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.location_on,
          color: Colors.white,
          size: 14,
        ),
        SizedBox(
          width: 4,
        ),
        DropdownButton<String>(
          value: _selectedState.toString(),
          icon: Icon(Icons.arrow_downward , color: Colors.white,),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.white),
          underline: Container(
            height: 2,
            color: Colors.white,
          ),
          onChanged: (value) {
            setState(() {
              _selectedState = value;
            });
          },
          items: _items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          dropdownColor: Color(0xff1f283c),
        ),
        SizedBox(
          width: 4,
        )
      ],
    );
  }

  _buildDrawer(double width, double height, String headerTitle) {
    return Container(
      width: width * 0.75,
      height: height,
      color: Color( 0xff1f283c ),
      child: ListView(
        children: [
          DrawerHeader(
            child: ListTile(
                title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, ProfileScreen.id),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/doctor/salama.jpg'),
                  ),
                ),
                Text(
                  headerTitle,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            )),
            decoration: BoxDecoration(
              color: Color(0xff1f283c),
            ),
          ),
          _buildDrawerCard('Emergency Numbers', 'assets/quick-options/phone.png', () =>Navigator.pushNamed(context, EmergencyNumbers.id)),
          _buildDrawerCard('Infection Map', 'assets/quick-options/map.png', () =>Navigator.pushNamed(context, InfectionMap.id)),
          _buildDrawerCard('Details', 'assets/quick-options/details.png',() =>Navigator.pushNamed(context, Details.id)),
          _buildDrawerCard('Symptoms', 'assets/quick-options/symptoms.png', () =>Navigator.pushNamed(context, Symptoms.id)),
          _buildDrawerCard('Prevention', 'assets/quick-options/prevention.png', () =>Navigator.pushNamed(context, Prevention.id)),
          _buildDrawerCard('About', 'assets/quick-options/info.png', () =>Navigator.pushNamed(context, About.id)),
        ],
      ),
    );
  }

  Widget _buildDrawerCard(String title, String image, Function onTap) {
    return Card(
      margin: EdgeInsets.fromLTRB(4, 5, 4, 5),
      color: Config.cardColor.withOpacity(0.9),
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(backgroundImage: AssetImage(image),radius: 20,),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
