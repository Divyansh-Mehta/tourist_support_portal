import "package:firebase_core/firebase_core.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "./screens/coin_screen.dart";
import "./screens/home_screen.dart";
import "./providers/places_provider.dart";
import "./screens/signin_screen.dart";
import "./screens/reset_password_screen.dart";
import "./screens/signup_screen.dart";
import "./screens/tabs_screen.dart";
import "./screens/profile_screen.dart";

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
        home: auth == null ? SignInScreen() : TabsScreen(),
        routes: {
          CoinScreen.routeName: (_) => CoinScreen(),
          ProfileScreen.routeName: (_) => ProfileScreen(),
          TabsScreen.routeName: (_) => TabsScreen(),
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
