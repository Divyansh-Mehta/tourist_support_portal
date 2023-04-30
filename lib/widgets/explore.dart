import "package:flutter/material.dart";

import "./place.dart";

class Explore extends StatefulWidget {
  const Explore({Key key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Explore",
              style: TextStyle(fontFamily: "merriweather", fontSize: 15),
            ),
            TextButton(
              onPressed: null,
              child: const Text(
                "See All >",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "merriweather",
                  color: Color.fromRGBO(85, 82, 82, 1),
                ),
              ),
            ),
          ]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Place("Delhi", "assets/images/delhi.jpg"),
              Place("Uttrakhand", "assets/images/uttrakhand.jpg"),
              Place("Karnataka", "assets/images/karnataka.jpg"),
              Place("Rajasthan", "assets/images/rajasthan.jpg"),
            ],
          ),
        )
      ],
    );
  }
}
