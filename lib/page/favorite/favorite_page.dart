import 'package:flutter/material.dart';
import 'package:hafoo/bloc/page/page_cubit.dart';
import 'package:hafoo/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: kYellowColor1,
        centerTitle: true,
        title: Text(
          "Makanan Favorit",
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyFavorite() {
      return Expanded(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon_love.png",
              ),
              SizedBox(height: 23),
              Text(
                "Belum mempunyai makanan favorit?",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Ayo temukan makanan favoritmu",
                style: subtitleTextStyle,
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 44,
                child: TextButton(
                  onPressed: () {
                    context.read<PageCubit>().setPage(0);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: kYellowColor1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Jelajahi Makanan",
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          children: const <FavoriteCard>[
            FavoriteCard(
              name: 'Risoles Keju',
              gambar: 'image_risoles.png',
              harga: '10.000',
            ),
            FavoriteCard(
              name: 'Dimsum',
              gambar: 'image_dimsum.png',
              harga: '10.000',
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
        // emptyFavorite(),
      ],
    );
  }
}

class FavoriteCard extends StatelessWidget {
  final String name;
  final String harga;
  final String gambar;
  const FavoriteCard({
    required this.name,
    required this.harga,
    required this.gambar,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 5.0,
            color: kBlackColor.withOpacity(0.25),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 48,
            margin: EdgeInsets.only(
              right: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  'assets/$gambar',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    color: Color(0xff504F5E),
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Rp. $harga',
                  style: yellowTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kYellowColor1,
            ),
            child: Center(
              child: Image.asset(
                'assets/icon_love.png',
                width: 12,
                color: kWhiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
