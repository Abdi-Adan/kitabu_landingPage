import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "The Team",
                style: TextStyle(
                    color: Color(0xFF001540),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TeamList('assets/dev.jpg', 'Abdi Adan',
                      'Mobile developer'),
                  TeamList('assets/kelvin.jpg', 'Kelvin Mulama',
                      'Product designer'),
                  TeamList('assets/dev2.jpg', 'John Simiyu',
                      'Web Developer'),
                ],
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

class TeamList extends StatelessWidget {
  final String image;
  final String name;
  final String specialty;

  const TeamList(this.image, this.name, this.specialty);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200.0,
            width: 200.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(image),
              ),
              color: Colors.transparent,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              name,
              style: TextStyle(
                  color: Color(0xFF001540),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(specialty,
                style: TextStyle(
                    color: Color(0xFF001540),
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
