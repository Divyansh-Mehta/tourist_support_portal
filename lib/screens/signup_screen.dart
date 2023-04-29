import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";

import "../widgets/reusable_widget.dart";
import "./home_screen.dart";
import "../utils/color_utils.dart";
import "../utils/error_dialogue.dart";

class SignUpScreen extends StatefulWidget {
  // const SignUpScreen({Key? key}) : super(key: key);
  static const routeName = "/sign-up-screen";
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _confirmPasswordTextController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
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
                reusableTextField("Enter Password", Icons.lock_outlined, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Confirm Password", Icons.lock_outlined,
                    true, _confirmPasswordTextController),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "Sign Up", () {
                  if (_passwordTextController.text !=
                      _confirmPasswordTextController.text) {
                    showErrorDialog("Enter the password correctly", context);
                    return;
                  }
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    print("Created New Account");
                    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                  }).onError((error, stackTrace) {
                    String displayError;
                    if (error
                        .toString()
                        .startsWith("[firebase_auth/email-already-in-use]")) {
                      displayError = "Email Already in use";
                    } else if (error
                        .toString()
                        .startsWith("[firebase_auth/weak-password]")) {
                      displayError = "Password is too weak";
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
