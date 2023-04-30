import 'package:flutter/material.dart';

import "../utils/color_utils.dart";

class CoinScreen extends StatefulWidget {
  const CoinScreen({Key key}) : super(key: key);
  static const routeName = "coin_screen";
  @override
  State<CoinScreen> createState() => _CoinScreenState();
}

class _CoinScreenState extends State<CoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coins"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                hexStringToColor("CB2B93"),
                hexStringToColor("9546C4"),
                hexStringToColor("5E61F4")
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: null,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      hexStringToColor("CB2B93"),
                      hexStringToColor("9546C4"),
                      hexStringToColor("5E61F4")
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: 100,
                height: 50,
                alignment: Alignment.center,
                child: const Text(
                  "Awail Offers",
                  style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                ),
              ),
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      hexStringToColor("CB2B93"),
                      hexStringToColor("9546C4"),
                      hexStringToColor("5E61F4")
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: 100,
                height: 50,
                alignment: Alignment.center,
                child: const Text(
                  "Donate",
                  style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                ),
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
