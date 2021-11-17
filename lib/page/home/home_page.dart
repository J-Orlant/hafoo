import 'package:flutter/material.dart';
import 'package:hafoo/page/custom_scroll.dart';
import 'package:hafoo/theme.dart';
import 'package:hafoo/widget/kategori_item.dart';
import 'package:hafoo/widget/populer_tile.dart';
import 'package:hafoo/widget/rekomendasi_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 24,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                'Hallo Rimuru\nSelamat Malam',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kYellowColor1,
                image: DecorationImage(
                  image: AssetImage('assets/profile_rimuru.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          bottom: 18,
          left: defaultMargin,
          right: defaultMargin,
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff999999).withOpacity(0.25),
              blurRadius: 4,
              offset: Offset(0, 1),
            ),
          ],
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Color(0xff3C474C),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Cari Sekarang',
                  hintStyle: subtitleTextStyle.copyWith(
                    fontSize: 16,
                    color: Color(0xffE6E6E6),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget kategori() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 18,
          left: defaultMargin,
          right: defaultMargin,
        ),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kategori',
              style: blackTextStyle.copyWith(fontWeight: medium),
            ),
            SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 80,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  KategoriItem(
                    image: 'icon_kategori_makan.png',
                    text: 'Makan',
                    index: 0,
                  ),
                  KategoriItem(
                    image: 'icon_kategori_minum.png',
                    text: 'Minum',
                    index: 1,
                  ),
                  KategoriItem(
                    image: 'icon_kategori_snack.png',
                    text: 'Snack',
                    index: 2,
                  ),
                  KategoriItem(
                    image: 'icon_kategori_sarapan.png',
                    text: 'Sarapan',
                    index: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget rekomendasi() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 14,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rekomendasi',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Lihat Semua',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 190,
              margin: EdgeInsets.only(top: 14),
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: const [
                  RekomendasiCard(
                    image: 'image_burger.png',
                    nama: 'Burger Daging Ayam',
                    topping: 'Keju + Sayur',
                    mainTopping: 'image_keju.png',
                    harga: '25.000',
                  ),
                  RekomendasiCard(
                    image: 'image_kebab.png',
                    nama: 'Kebab Turki',
                    topping: 'Daging + Sayur',
                    mainTopping: 'image_daging.png',
                    harga: '15.000',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget populer() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Populer',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            PopulerTile(),
            PopulerTile(),
            SizedBox(
              height: 60,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: ListView(
            padding: EdgeInsets.symmetric(
              vertical: 21,
            ),
            children: [
              header(),
              search(),
              kategori(),
              rekomendasi(),
              populer(),
            ],
          ),
        ),
      ),
    );
  }
}
