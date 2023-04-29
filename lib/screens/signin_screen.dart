import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";

import "../widgets/reusable_widget.dart";
import "./home_screen.dart";
import "./reset_password_screen.dart";
import "./signup_screen.dart";
import "../utils/color_utils.dart";
import "../utils/error_dialogue.dart";
import "./tabs_screen.dart";

class SignInScreen extends StatefulWidget {
  // const SignInScreen({Key? key}) : super(key: key);
  static const routeName = "/sign-in-screen";

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/auth-screen-image.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 5,
                ),
                forgetPassword(context),
                firebaseUIButton(context, "Sign In", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.of(context).pushReplacementNamed(TabsScreen.routeName);
                  }).onError((error, stackTrace) {
                    String displayError;
                    if (error
                        .toString()
                        .startsWith("[firebase_auth/wrong-password]")) {
                      displayError = "Invalid Password";
                    } else if (error
                        .toString()
                        .startsWith("[firebase_auth/user-not-found]")) {
                      displayError = "User not Found";
                    } else {
                      displayError = "Network Error";
                    }
                    showErrorDialog(displayError, context);
                    print("Error ${error.toString()}");
                  });
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(SignUpScreen.routeName);
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.white70),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.of(context).pushNamed(ResetPasswordScreen.routeName),
      ),
    );
  }
}
