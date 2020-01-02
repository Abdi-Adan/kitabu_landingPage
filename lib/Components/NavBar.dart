import 'package:flutter/material.dart';

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Colors.transparent,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            constraints: BoxConstraints(maxWidth: 1500),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    // Container(
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(30),
                    //       color: Colors.transparent),
                    //   child: Image.asset("assets/kitabulogo.png"),
                    // ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Kitabu MicroFinance Africa",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    MaterialButton(
                      splashColor: Colors.orangeAccent,
                      color: Color(0xFFf47f07),
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
                      color: Color(0xFFf47f07),
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
                      color: Color(0xFFf47f07),
                      child: Text(
                        "Team",
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
                      splashColor: Colors.lightBlueAccent,
                      color: Colors.blue,
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
