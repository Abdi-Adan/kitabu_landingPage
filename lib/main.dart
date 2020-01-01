import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kitabu Africa Landing Page",
      theme: ThemeData(
        primaryColor: Color(0xFF001540),
        accentColor: Colors.blueAccent,
      ),
      home: MyHomePage(),
    );
  }
}
