import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUsPage extends StatelessWidget {
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
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "About Us",
                  style: TextStyle(
                      color: Color(0xFF001540),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Services",
                          style: TextStyle(
                            color: Color(0xFF001540),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 50),
                        Container(
                          width: 350,
                          child: Text(
                            "We provide a variety of communication and payments API products that are everything you need to build high impact mobile engagement solutions. Our platform allows to you work on building superior customer engagement experiences without the complexity that comes from working directly with mobile operators.",
                            style: TextStyle(
                              color: Color(0xFF001540),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 500,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          AboutCards(
                              'Kopa Leo, Lipa Kesho',
                              "Let your trusted customers buy on credit and pay later. Automate all your debt recording, tracking and Payments with zero confusion and customer arguments. ",
                              FontAwesomeIcons.gamepad),
                          AboutCards(
                              'Inventory Management',
                              "Save time and money by ordering products at any time via SMS or mobile app, and receive free same-day delivery to your shop. Keep accurate records of purchased products and be aware of profit margins.",
                              Icons.chrome_reader_mode),
                          AboutCards(
                              'Consumer Analytics',
                              "Get Access to market trends and purchasing habits of your customers. Get personalized promotions and business insights for new product offerings in the market.",
                              Icons.timeline),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          AboutCards(
                              'Loans',
                              "Get faster access to loans that can grow or restock your shop at lower interest rates based on sales. Get a consumption loan to buy a product at our partner shops and outlets.",
                              Icons.monetization_on),
                          AboutCards(
                              'Insurance',
                              "Avoid total loss by covering every asset that you have against business risks.",
                              Icons.monetization_on),
                          AboutCards(
                              'Jijenge Pole Pole',
                              "Enroll to a house construction plan. Buy land and construct your own house by making small payments to achieve your construction milestones until when the house is ready. Enroll to purchase products by making small payments at partner Agents. ",
                              Icons.timeline),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutCards extends StatelessWidget {
  final String title;
  final String des;
  final IconData con;

  const AboutCards(this.title, this.des, this.con);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 280,
      height: 370,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        color: Colors.white,
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: Icon(
                con,
                size: 80,
                color: Color(0xfff8a000),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              alignment: Alignment.centerLeft,
              child: Column(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xFF001540),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Text(
                      des,
                      style: TextStyle(
                          color: Color(0xFF001540),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
