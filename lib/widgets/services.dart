import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ),
        ),
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
          ),
        ),
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
          ),
        ),
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
          ),
        ),
      ],
    );
  }
}
