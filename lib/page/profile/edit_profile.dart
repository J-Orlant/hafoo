import 'package:flutter/material.dart';

import '../../theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget inputNama() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama",
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: secondaryTextStyle,
              decoration: InputDecoration(
                hintText: 'Rimuru Tempest',
                hintStyle: secondaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: kYellowColor1,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget inputUsername() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username",
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: secondaryTextStyle,
              decoration: InputDecoration(
                hintText: '@rimurutempest',
                hintStyle: secondaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: kYellowColor1,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget inputEmail() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: secondaryTextStyle,
              decoration: InputDecoration(
                hintText: 'rimuru@mail.ru',
                hintStyle: secondaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: kYellowColor1,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: 30,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/profile_rimuru.png',
                  ),
                ),
              ),
            ),
            inputNama(),
            inputUsername(),
            inputEmail(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kYellowColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Ubah Profile",
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: Color(0xffED6B63),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
