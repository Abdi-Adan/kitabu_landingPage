// Add social links for facebook page, twitter handle, instagaram and LinkedIn
// Add google maps location

import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 7),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))),
        color: Colors.white,
        elevation: 10,
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
