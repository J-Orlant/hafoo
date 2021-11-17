import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';

class PopulerTile extends StatelessWidget {
  const PopulerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 4,
            color: Color(0xffE0E0E0).withOpacity(0.9),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 145,
            height: 80,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/image_risoles.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Risoles Isi Keju',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_star.png',
                      width: 14,
                    ),
                    Image.asset(
                      'assets/icon_star.png',
                      width: 14,
                    ),
                    Image.asset(
                      'assets/icon_star.png',
                      width: 14,
                    ),
                    Image.asset(
                      'assets/icon_star.png',
                      width: 14,
                    ),
                    Image.asset(
                      'assets/icon_star.png',
                      width: 14,
                      color: kBlackColor.withOpacity(0.25),
                    ),
                  ],
                ),
                SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2.2 Km',
                      style: greyTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Rp. 30.000',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
