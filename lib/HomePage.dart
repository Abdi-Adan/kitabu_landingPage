import 'package:flutter/material.dart';
import 'package:kitabu_landingPage/Components/AboutUs.dart';
import 'package:kitabu_landingPage/Components/Contacts.dart';
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
                  Colors.white,
                  Colors.white
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
                ContactPage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
