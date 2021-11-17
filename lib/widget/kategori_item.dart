import 'package:flutter/material.dart';
import 'package:hafoo/page/home/kategori_food_page.dart';
import 'package:hafoo/theme.dart';

class KategoriItem extends StatelessWidget {
  final String image;
  final String text;
  final int index;
  const KategoriItem({
    required this.image,
    required this.text,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => KategoriFoodPage(
              kategori: text,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 40,
        ),
        child: Column(
          children: [
            Container(
              width: 48,
              height: 48,
              margin: EdgeInsets.only(
                bottom: 8,
              ),
              decoration: BoxDecoration(
                color: kYellowColor1,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  'assets/$image',
                  width: 28,
                ),
              ),
            ),
            Text(
              text,
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
