import 'package:flutter/material.dart';

import "../utils/color_utils.dart";

class Services extends StatefulWidget {
  const Services({Key key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          SizedBox(
            width: 10,
          ),
          Text(
            "Book Rides",
            style: TextStyle(fontFamily: "merriweather", fontSize: 15),
          ),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    //<-- SEE HERE
                    Icons.train,
                    color: Colors.white,
                    size: 20,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), //<-- SEE HERE
                    padding: EdgeInsets.all(10),
                    backgroundColor: hexStringToColor("5E61F4"),
                  ),
                ),
                Text(
                  "Train",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    //<-- SEE HERE
                    Icons.flight,
                    color: Colors.white,
                    size: 20,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), //<-- SEE HERE
                    padding: EdgeInsets.all(10),
                    backgroundColor: hexStringToColor("5E61F4"),
                  ),
                ),
                Text(
                  "Flight",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    //<-- SEE HERE
                    Icons.bus_alert,
                    color: Colors.white,
                    size: 20,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), //<-- SEE HERE
                    padding: EdgeInsets.all(10),
                    backgroundColor: hexStringToColor("5E61F4"),
                  ),
                ),
                Text(
                  "Bus",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    //<-- SEE HERE
                    Icons.bike_scooter,
                    color: Colors.white,
                    size: 20,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), //<-- SEE HERE
                    padding: EdgeInsets.all(10),
                    backgroundColor: hexStringToColor("5E61F4"),
                  ),
                ),
                Text(
                  "Bike",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
