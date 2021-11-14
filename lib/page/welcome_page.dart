import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget button() {
      return Container(
        width: double.infinity,
        height: 53,
        margin: EdgeInsets.only(
          left: 52,
          right: 52,
          bottom: 35,
        ),
        decoration: BoxDecoration(
          color: kYellowColor2,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: kYellowColor1,
                  ),
                  child: Center(
                    child: Text(
                      'Daftar',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    'Masuk',
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/image_welcome.png',
                width: 297,
              ),
              SizedBox(
                height: 67,
              ),
              Text(
                'Dapatkan suasana makan\ndirumah yang nyaman dan aman',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Jadikan suasana makan yang nyaman\ndan aman tanpa harus keluar rumah',
                style: subtitleTextStyle.copyWith(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
