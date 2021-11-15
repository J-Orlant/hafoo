import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';
import 'package:hafoo/widget/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    Widget content() {
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
                  'Belum mempunyai akun? ',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    'Daftar',
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
          ],
        );
      }

      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/welcome');
              },
              child: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Hai apa kabar?',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Selamat datang kembali\nKami sangat merindukanmu!',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            email(),
            password(),
            Spacer(),
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
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/image_login.png',
                  width: 320,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/image_login2.png',
                  width: 320,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/image_login3.png',
                  width: 320,
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
