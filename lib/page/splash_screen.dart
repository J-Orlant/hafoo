import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';

class SplashScreeen extends StatefulWidget {
  const SplashScreeen({Key? key}) : super(key: key);

  @override
  _SplashScreeenState createState() => _SplashScreeenState();
}

class _SplashScreeenState extends State<SplashScreeen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushNamedAndRemoveUntil(
            context, '/welcome', (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kYellowColor1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_splash.png',
              width: 152,
            ),
            SizedBox(
              height: 39,
            ),
            Text(
              'HAFOO',
              style: whiteTextStyle.copyWith(
                fontSize: 40,
                fontWeight: semiBold,
                letterSpacing: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
