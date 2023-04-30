import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";

import "../widgets/reusable_widget.dart";
import "./home_screen.dart";
import "../utils/color_utils.dart";
import "../utils/error_dialogue.dart";

class ResetPasswordScreen extends StatefulWidget {
  // const ResetPasswordScreen({Key? key}) : super(key: key);
  static const routeName = "/reset-password";
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPasswordScreen> {
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Reset Password",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Email Id", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "Reset Password", () {
                  FirebaseAuth.instance
                      .sendPasswordResetEmail(email: _emailTextController.text)
                      .then((value) => Navigator.of(context).pop())
                      .onError((error, stackTrace) {
                    String displayError;
                    if (error
                        .toString()
                        .startsWith("[firebase_auth/invalid-email]")) {
                      displayError = "Invalid Email";
                    } else {
                      displayError = "Network Error";
                    }
                    showErrorDialog(displayError, context);
                    print("Error ${error.toString()}");
                  });
                })
              ],
            ),
          ))),
    );
  }
}
