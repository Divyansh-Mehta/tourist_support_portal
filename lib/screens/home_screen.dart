import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";

import "./signin_screen.dart";

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  static const routeName = "/home-screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(children: [
        ]),
      )),
    );
  }
}
