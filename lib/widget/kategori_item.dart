import 'package:flutter/material.dart';
import 'package:hafoo/provider/kategori.dart';
import 'package:hafoo/theme.dart';
import 'package:provider/provider.dart';

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
    Kategori kategori = Provider.of<Kategori>(context);

    return GestureDetector(
      onTap: () {
        kategori.selectedIndex = index;
      },
      child: Opacity(
        opacity: (kategori.selectedIndex == index) ? 1 : 0.5,
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
      ),
    );
  }
}
