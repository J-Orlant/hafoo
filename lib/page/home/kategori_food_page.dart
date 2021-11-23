import 'package:flutter/material.dart';
import 'package:hafoo/page/home/detail_food_page.dart';
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
                  Icons.arrow_back_ios_new,
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
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 28,
        ),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          children: const [
            KategoriCard(
              nama: 'Risoles',
              harga: 'Rp. 20.000',
            ),
            KategoriCard(
              nama: 'Risoles',
              harga: 'Rp. 20.000',
            ),
            KategoriCard(
              nama: 'Risoles',
              harga: 'Rp. 20.000',
            ),
          ],
        ),
      ),
    );
  }
}

class KategoriCard extends StatelessWidget {
  final String nama;
  final String harga;
  const KategoriCard({
    required this.nama,
    required this.harga,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailFoodPage(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 0),
              color: kBlackColor.withOpacity(0.25),
              blurRadius: 3,
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 94,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image_risoles.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  nama,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                Text(
                  harga,
                  style: yellowTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Positioned(
              top: 5,
              right: 5,
              child: Image.asset(
                'assets/icon_love.png',
                width: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
