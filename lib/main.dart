import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/home_screen.dart';

void main() => runApp(BetyApp());

class BetyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context) => WelcomeScreen(),
        LoginScreen.id:(context) => LoginScreen(),
        SignupScreen.id:(context) => SignupScreen(),
        HomeScreen.id:(context) => HomeScreen(),

      },

    );
  }
}
