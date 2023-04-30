import "package:flutter/material.dart";
import "../widgets/profile_header.dart";

class ProfileScreen extends StatefulWidget {
  static const routeName = "profile-screen";
  const ProfileScreen({Key key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              ProfileHeader(),
            ],
          )),
        ));
  }
}
