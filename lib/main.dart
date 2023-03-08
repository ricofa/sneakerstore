import 'package:flutter/material.dart';
import 'package:sneakerstore/pages/home/main_page.dart';
import 'package:sneakerstore/pages/sign_in.dart';
import 'package:sneakerstore/pages/sign_up.dart';
import 'package:sneakerstore/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/home': (context) => MainPage(),
      },
    );
  }
}

