import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';

class DetailPembayaranPage extends StatelessWidget {
  const DetailPembayaranPage({Key? key}) : super(key: key);

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
                  Icons.arrow_back_ios_new,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Detail Pembayaran',
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

    Widget pesanan() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 8,
            ),
            child: Text(
              'Pesanan',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          DetailPembayaranCard(),
        ],
      );
    }

    Widget detailAlamat() {
      return Container(
        width: double.infinity,
        height: 246,
        margin: EdgeInsets.only(
          top: 24,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kWhiteColor,
          boxShadow: [
            defaultBoxShadow,
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Alamat',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/icon_mark.png',
                      width: 18,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Image.asset(
                      'assets/icon_line.png',
                      height: 79,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Image.asset(
                      'assets/icon_mark.png',
                      width: 18,
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi Toko',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Kantor Hafoo',
                      style: blackTextStyle,
                    ),
                    SizedBox(
                      height: 88,
                    ),
                    Text(
                      'Lokasi Anda',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Masukan lokasi anda',
                      style: blackTextStyle,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget ringkasan() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 24,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 18,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kWhiteColor,
          boxShadow: [
            defaultBoxShadow,
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ringkasan pembayaran',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            // NOTE: Jumlah
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jumlah produk',
                  style: blackTextStyle,
                ),
                Text(
                  '4 Buah',
                  style: blackTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            // Harga Produk
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Harga produk',
                  style: blackTextStyle,
                ),
                Text(
                  'Rp. 80.000',
                  style: blackTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            // Biaya Pengiriman
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Biaya pengiriman',
                  style: blackTextStyle,
                ),
                Text(
                  'Rp. 10.000',
                  style: blackTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: kBlackColor,
              thickness: 1,
            ),
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Rp. 90.000',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ],
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
        ),
        child: TextButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => DetailPembayaranPage(),
            //   ),
            // );
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            backgroundColor: kYellowColor1,
          ),
          child: Text(
            'Pilih Pembayaran',
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
          horizontal: 12,
          vertical: 30,
        ),
        children: [
          pesanan(),
          detailAlamat(),
          ringkasan(),
          button(),
        ],
      ),
    );
  }
}

class DetailPembayaranCard extends StatelessWidget {
  const DetailPembayaranCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        right: 20,
        left: 16,
        top: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kWhiteColor,
        boxShadow: [
          defaultBoxShadow,
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 121,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/image_dimsum.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dimsum',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Rp. 80.000',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 43,
              ),
              Text(
                '2x',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
