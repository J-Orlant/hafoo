import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';

class KategoriFoodPage extends StatelessWidget {
  final String kategori;
  const KategoriFoodPage({
    required this.kategori,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget appbar() {
      return SafeArea(
        child: Container(
          width: double.infinity,
          height: 92,
          padding: EdgeInsets.symmetric(
            vertical: 32,
            horizontal: 22,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            boxShadow: [
              defaultBoxShadow,
            ],
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              SizedBox(
                width: 95,
              ),
              Text(
                kategori,
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                width: 12,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(92),
        child: appbar(),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 28,
        ),
      ),
    );
  }
}
