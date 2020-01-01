import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Colors.transparent,
        elevation: 10,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              DescColumn(),
              Expanded(
                child: SizedBox(
                  height: 600,
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
        Text(
          "Kitabu Africa",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.white),
        ),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          child: Text(
            "Kitabu Africa is a mobile based fin-tech product that aims to deliver a Fast \nand effective way to manage inventory,record and control debts \nand access financial services for Small to Medium Sized Enterprises.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        MaterialButton(
          splashColor: Colors.lightBlueAccent,
          color: Colors.transparent,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/google.png",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Download the app",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
        ),
      ],
    );
  }
}
