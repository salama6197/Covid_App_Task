import 'file:///C:/Users/salam/Desktop/flutter/covid19_care/lib/screens/main-screen.dart';
import 'package:covid19_care/drawer-screens/about.dart';
import 'package:covid19_care/drawer-screens/details.dart';
import 'package:covid19_care/drawer-screens/emergency-numbers.dart';
import 'package:covid19_care/drawer-screens/infection-map.dart';
import 'package:covid19_care/drawer-screens/prevention.dart';
import 'package:covid19_care/drawer-screens/symptoms.dart';
import 'package:covid19_care/regestire-screens/login/login-screen.dart';
import 'package:covid19_care/regestire-screens/signup/signup-screen.dart';
import 'package:covid19_care/screens/profile-screen.dart';
import 'package:covid19_care/screens/service-screen.dart';
import 'package:covid19_care/screens/statics-screen.dart';
import 'package:covid19_care/service-card-screens/chat-with-doctor.dart';
import 'package:covid19_care/service-card-screens/genral-check-up.dart';
import 'package:covid19_care/service-card-screens/get-doctor-advice.dart';
import 'package:covid19_care/service-card-screens/helth-news.dart';
import 'package:covid19_care/splash-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-care',
      initialRoute: SplashScreen.id,
      routes: {
        MyHomePage.id:(context) =>MyHomePage(),
        Statics.id:(context) => Statics(),
        ChatWithDoctor.id:(context) => ChatWithDoctor(),
        GeneralCheckUp.id:(context)=>GeneralCheckUp(),
        DoctorAdvice.id:(context)=>DoctorAdvice(),
        HealthNews.id:(context)=>HealthNews(),
        EmergencyNumbers.id:(context)=>EmergencyNumbers(),
        InfectionMap.id:(context)=>InfectionMap(),
        Details.id:(context)=>Details(),
        Symptoms.id:(context)=>Symptoms(),
        Prevention.id:(context)=>Prevention(),
        About.id:(context)=>About(),
        ProfileScreen.id:(context)=>ProfileScreen(),
        ServiceScreen.id:(context)=>ServiceScreen(),
        SplashScreen.id:(context)=>SplashScreen(),
        SignUpScreen.id:(context)=>SignUpScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
      },
    );
  }
}


