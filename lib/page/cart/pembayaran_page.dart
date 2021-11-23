import 'package:flutter/material.dart';
import 'package:hafoo/provider/pembayaran.dart';
import 'package:hafoo/theme.dart';
import 'package:provider/provider.dart';

class PembayaranPage extends StatelessWidget {
  const PembayaranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Pembayaran pembayaran = Provider.of(context);
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
                  Icons.arrow_back_ios_new,
                ),
              ),
              SizedBox(
                width: 75,
              ),
              Text(
                'Pembayaran',
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

    Widget alamat() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 34,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                'Alamat',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              height: 194,
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 24,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 5,
                    color: kBlackColor.withOpacity(0.25),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(right: 29),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kWhiteColor,
                  border: Border.all(
                    color: Color(0xffF8F8F8),
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 179,
                      height: 147,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/image_map.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: defaultMargin,
                          ),
                          Text(
                            'Rumah',
                            style: blackTextStyle.copyWith(
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            'Jl. Perintis RT 011 RW 01 No 36',
                            style: greyTextStyle.copyWith(
                              fontSize: 12,
                              color: Color(0xff838383),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget metode() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 100,
        ),
        padding: EdgeInsets.only(
          left: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Metode pembayaran',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 28,
            ),
            MetodeItem(
              image: 'image_dana.png',
              index: 0,
            ),
            MetodeItem(
              image: 'image_gopay.png',
              index: 1,
            ),
            MetodeItem(
              image: 'image_cod.png',
              index: 2,
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        width: double.infinity,
        height: 36,
        margin: EdgeInsets.only(
          top: 24,
          left: 8,
          right: 8,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/success', (route) => false);
            pembayaran.changeIndex = 0;
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            backgroundColor: kYellowColor1,
          ),
          child: Text(
            'Bayar Sekarang',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
            ),
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
          vertical: 28,
          horizontal: 12,
        ),
        children: [
          alamat(),
          metode(),
          button(),
        ],
      ),
    );
  }
}

class MetodeItem extends StatelessWidget {
  final String image;
  final int index;
  const MetodeItem({
    required this.image,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Pembayaran pembayaran = Provider.of<Pembayaran>(context);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      child: Row(
        children: [
          Container(
            width: 117,
            height: 43,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 9,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: kBlackColor.withOpacity(0.25),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Image.asset(
              'assets/$image',
              width: 85,
            ),
          ),
          Spacer(),
          Radio(
            activeColor: kYellowColor1,
            value: index,
            groupValue: pembayaran.currentIndex,
            onChanged: (value) {
              pembayaran.changeIndex = value;
            },
          ),
        ],
      ),
    );
  }
}
