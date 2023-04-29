import "package:firebase_core/firebase_core.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "package:tourist_support_portal/screens/home_screen.dart";
import "./providers/places_provider.dart";
import "./screens/signin_screen.dart";
import "./screens/reset_password_screen.dart";
import "./screens/signup_screen.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final auth = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Places(),
        )
      ],
      child: MaterialApp(
        title: "Kontest",
        theme: ThemeData(
          primarySwatch: Colors.purple,
          appBarTheme: const AppBarTheme(
          ),
        ),
        home: auth == null ? SignInScreen() : HomeScreen(),
        routes: {
          HomeScreen.routeName: (_) => HomeScreen(),
          ResetPasswordScreen.routeName: (_) => ResetPasswordScreen(),
          SignInScreen.routeName: (_) => SignInScreen(),
          SignUpScreen.routeName: (_) => SignUpScreen(),
        },
      ),
      //
    );
  }
}
