import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";

import "../widgets/slider.dart";
import "../widgets/services.dart";
import "../widgets/explore.dart";

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  static const routeName = "/home-screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderScreen(),
        SizedBox(height: 10,),
        Services(),
        SizedBox(height: 10,),
        Explore(),
      ],
    );
  }
}
