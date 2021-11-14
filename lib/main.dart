import 'package:flutter/material.dart';
import 'package:hafoo/page/register_page.dart';
import 'package:hafoo/page/splash_screen.dart';
import 'package:hafoo/page/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ('/'): (context) => SplashScreeen(),
        ('/welcome'): (context) => WelcomePage(),
        ('/register'): (context) => RegisterPage(),
      },
    );
  }
}
