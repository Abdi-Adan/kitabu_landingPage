import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 7),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))),
        color: Colors.white,
        elevation: 10,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              DescColumn(),
              Expanded(
                child: SizedBox(
                  height: 500,
                  width: 500,
                  child: Image.asset(
                    "assets/banner.png",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DescColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Text(
            "Kitabu Africa",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Color(0xFF001540)),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Text(
            "Kitabu Africa is a mobile based fin-tech product that aims to deliver a Fast \nand effective way to manage inventory,record and control debts \nand access financial services for Small to Medium Sized Enterprises.",
            style: TextStyle(
              color: Color(0xFF001540),
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20),
          child: MaterialButton(
            splashColor: Colors.lightBlueAccent,
            color: Color(0xFF001540),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Download the app",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
          ),
        ),
      ],
    );
  }
}
