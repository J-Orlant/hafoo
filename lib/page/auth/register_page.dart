import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';
import 'package:hafoo/widget/custom_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    Widget content() {
      Widget nama() {
        return Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.only(
            bottom: 12,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kYellowColor1,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
            cursorColor: kYellowColor1,
            decoration: InputDecoration.collapsed(
              focusColor: kYellowColor1,
              hoverColor: kYellowColor1,
              hintText: 'Nama',
              hintStyle: subtitleTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ),
        );
      }

      Widget username() {
        return Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.only(
            bottom: 12,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kYellowColor1,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
            cursorColor: kYellowColor1,
            decoration: InputDecoration.collapsed(
              focusColor: kYellowColor1,
              hoverColor: kYellowColor1,
              hintText: 'Username',
              hintStyle: subtitleTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ),
        );
      }

      Widget email() {
        return Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.only(
            bottom: 12,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kYellowColor1,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
            cursorColor: kYellowColor1,
            decoration: InputDecoration.collapsed(
              focusColor: kYellowColor1,
              hoverColor: kYellowColor1,
              hintText: 'Email',
              hintStyle: subtitleTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ),
        );
      }

      Widget password() {
        return Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.only(
            bottom: 12,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kYellowColor1,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
            cursorColor: kYellowColor1,
            decoration: InputDecoration.collapsed(
              focusColor: kYellowColor1,
              hoverColor: kYellowColor1,
              hintText: 'Passsword',
              hintStyle: subtitleTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            obscureText: true,
          ),
        );
      }

      Widget button() {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah mempunyai akun? ',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'Masuk',
                    style: yellowTextStyle.copyWith(
                      fontWeight: black,
                    ),
                  ),
                )
              ],
            ),
            CustomButton(
              text: 'Daftar',
              onTap: () {
                Navigator.pushNamed(context, '/main-page');
              },
            ),
            SizedBox(
              height: 36,
            ),
          ],
        );
      }

      return Container(
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 26,
          ),
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/welcome');
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Center(
              child: Image.asset(
                'assets/image_regis.png',
                width: 306,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Daftar sekarang',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            nama(),
            username(),
            email(),
            password(),
            SizedBox(
              height: 60,
            ),
            button(),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              Positioned(
                top: -100,
                right: -70,
                child: Image.asset(
                  'assets/image_background.png',
                  width: 320,
                ),
              ),
              Positioned(
                left: -70,
                bottom: -100,
                child: RotatedBox(
                  quarterTurns: 90,
                  child: Image.asset(
                    'assets/image_background.png',
                    width: 320,
                  ),
                ),
              ),
              content(),
            ],
          ),
        ),
      ),
    );
  }
}
