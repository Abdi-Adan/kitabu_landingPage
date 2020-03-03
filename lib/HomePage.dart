import 'package:flutter/material.dart';
import 'package:kitabu_landingPage/Components/AboutUs.dart';
// import 'package:kitabu_landingPage/Components/Events.dart';
import 'package:kitabu_landingPage/Components/team.dart';


import 'Components/NavBar.dart';
import 'Components/home.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xFF00316E),
              Color(0xFF001C57),
              Color(0xFF00224B),
              Color(0xFF001B3A),
              Color(0xFF001540),
            ])),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                DesktopNavBar(),
                LandingPage(),
                AboutUsPage(),
                // EventsPage(),
                TeamPage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
