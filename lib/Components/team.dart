import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
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
              TeamList('assets/dev.jpg', 'Abdi Adan',
                  'Mobile developer, Data Scientist'),
              TeamList('assets/kelvin.jpg', 'Kelvin Mulama',
                  'Product designer, Marketting'),
              TeamList(
                  'assets/dev2.jpg', 'John Simiyu', 'Web, Mobile Developer'),
            ],
          ),
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
            height: 150.0,
            width: 150.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(75),
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
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(specialty,
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
