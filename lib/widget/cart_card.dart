import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';

class CartCard extends StatefulWidget {
  // CartCard({});

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int jumlah = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(
        top: 26,
        bottom: 22,
        left: 9,
        right: 24,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: kBlackColor.withOpacity(0.25),
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/image_dimsum.png',
              width: 121,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dimsum",
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  "Isi 4 , Ayam cincang",
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Rp.20.000",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() => jumlah++);
                },
                child: Image.asset(
                  'assets/icon_add.png',
                  width: 20,
                ),
              ),
              SizedBox(height: 7),
              Text(
                jumlah.toString(),
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(height: 7),
              jumlah != 1
                  ? GestureDetector(
                      onTap: () {
                        setState(() => jumlah--);
                      },
                      child: Image.asset(
                        'assets/icon_min.png',
                        width: 20,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
