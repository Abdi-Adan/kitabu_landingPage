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
              TeamList(Image.asset('assets/dev.jpg'), 'Abdi Adan',
                  'Mobile developer, Data Scientist'),
              TeamList(Image.asset('assets/kelvin.jpg'), 'Kelvin Mulama',
                  'Product designer, Marketting'),
              TeamList(Image.asset('assets/dev2.jpg'), 'John Simiyu',
                  'Web, Mobile Developer'),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamList extends StatelessWidget {
  final Widget image;
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
          CircleAvatar(
            radius: 100,
            child: image,
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
