import 'package:flutter/material.dart';
import 'package:kitabu_landingPage/Components/team.dart';

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 7),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        color: Colors.white,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            constraints: BoxConstraints(maxWidth: 1500),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      height: 50.0,
                      width: 50.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/kitabulogo.png"),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    // CircleAvatar(
                    //   backgroundColor: Colors.white,
                    //   child: CircleAvatar(
                    //     radius: 20,
                    //     backgroundColor: Colors.transparent,
                    //     child: Image.asset(),
                    //   ),
                    // ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Kitabu Africa",
                      style: TextStyle(
                          color: Color(0xFF001540),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    MaterialButton(
                      splashColor: Colors.orangeAccent,
                      color: Colors.orange,
                      child: Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      splashColor: Colors.orangeAccent,
                      color: Colors.orange,
                      child: Text(
                        "About Us",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      splashColor: Colors.orangeAccent,
                      color: Colors.orange,
                      child: Text(
                        "Team",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TeamPage()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      splashColor: Colors.lightBlueAccent,
                      color: Color(0xFF001540),
                      child: Text(
                        "Contacts",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
