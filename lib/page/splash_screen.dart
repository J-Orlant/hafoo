import 'package:flutter/material.dart';
import 'package:hafoo/provider/product_provider.dart';
import 'package:hafoo/theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreeen extends StatefulWidget {
  const SplashScreeen({Key? key}) : super(key: key);

  @override
  _SplashScreeenState createState() => _SplashScreeenState();
}

class _SplashScreeenState extends State<SplashScreeen> {
  @override
  void initState() {
    getInit();
    super.initState();
  }

  getInit() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('token')) {
      await Provider.of<ProductProvider>(context, listen: false)
          .getProducts()
          .whenComplete(() {
        Navigator.pushNamedAndRemoveUntil(
            context, '/main-page', (route) => false);
      });
    } else {
      Navigator.pushNamedAndRemoveUntil(context, '/welcome', (route) => false);
    }
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
