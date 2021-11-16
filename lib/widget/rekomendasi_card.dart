import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';

class RekomendasiCard extends StatelessWidget {
  final String image;
  final String nama;
  final String topping;
  final String mainTopping;
  final String harga;
  const RekomendasiCard({
    Key? key,
    required this.image,
    required this.nama,
    required this.topping,
    required this.mainTopping,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 186,
      margin: EdgeInsets.only(
        right: 24,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 5,
            color: Color(0xffE0E0E0).withOpacity(0.9),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 19,
              height: 19,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kYellowColor2,
              ),
              child: Center(
                child: Image.asset(
                  'assets/icon_love.png',
                  width: 10,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 99,
                  height: 90,
                  margin: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/$image'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  nama,
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      topping,
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        color: Color(0xff263238).withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      'assets/$mainTopping',
                      width: 12,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kYellowColor1,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        harga,
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
