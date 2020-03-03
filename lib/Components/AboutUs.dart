import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUsPage extends StatelessWidget {
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
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "About Us",
                  style: TextStyle(
                      color: Colors.white,
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
                      children: <Widget>[
                        Text(
                          "Services",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 100),
                        Text(
                          "We provide a variety of communication and payments API \nproducts that are everything you need to build high impact\nmobile engagement solutions. Our platform allows to you\nwork on building superior customer engagement\nexperiences without the complexity that comes\nfrom working directly with mobile operators.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 400,
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
                              'Kopa Sasa, Lipa Kesho',
                              "Let your trusted customers buy on credit and pay later. Automate all your debt recording, tracking and Payments with zero confusion and customer arguments. Know when your customers will pay, if they will delay to pay or if they will fail to pay back. Increase your sales by Lending out to new customers with confidence that they will pay back.",
                              FontAwesomeIcons.gamepad),
                          AboutCards(
                              'Inventory Management',
                              "Save time and money by ordering products at any time via SMS or mobile app, and receive free same-day delivery to your shop. Keep accurate records of purchased products and be aware of your shop’s profit margins.",
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
                              "Enroll to a house construction plan. Buy land and construct your own house by making small payments to achieve your construction milestones until when the house is ready. Enroll to purchase products by making small payments at partner Agents and get it delivered there. Set out group purchase or saving targets. Enroll members for the group e.g clubs, social groups, church groups and Chamas. Make and track payments until the target is achieved with zero fraud. Hawkers can enroll their customers to make small payments for their products and deliver them when they finish paying, saving them time and energy. Save for situations such as health and travel emergencies using small payments and get a top up loan in case the emergency occurs and the target is not enough.",
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: 280,
      height: 400,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Color(0xFF00316E),
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
                size: 100,
                color: Color(0xFFf47f07),
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
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    child: Text(
                      des,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // OutlineButton(
                  //   onPressed: () {},
                  //   child: Text(
                  //     "learn more...",
                  //     style: TextStyle(
                  //       color: Colors.deepOrange,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
