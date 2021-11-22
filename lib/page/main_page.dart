import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hafoo/bloc/page/page_cubit.dart';
import 'package:hafoo/page/cart/cart_page.dart';
import 'package:hafoo/page/cart/detail_pembayaran_page.dart';
import 'package:hafoo/page/favorite/favorite_page.dart';
import 'package:hafoo/page/home/home_page.dart';
import 'package:hafoo/page/profile/profile.dart';
import 'package:hafoo/theme.dart';
import 'package:hafoo/widget/custom_button.dart';
import 'package:hafoo/widget/navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget page(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return FavoritePage();
        case 2:
          return CartPage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    Widget bottomNav(int currentIndex) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: (currentIndex == 2)
            ? BottomNavigationCart()
            : Container(
                width: double.infinity,
                height: 73,
                padding: EdgeInsets.symmetric(
                  horizontal: 53,
                ),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 2,
                      color: kBlackColor.withOpacity(0.25),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    NavigationItem(
                      icon: 'icon_home.png',
                      index: 0,
                    ),
                    NavigationItem(
                      icon: 'icon_favorite.png',
                      index: 1,
                    ),
                    NavigationItem(
                      icon: 'icon_cart.png',
                      index: 2,
                    ),
                    NavigationItem(
                      icon: 'icon_profile_nav.png',
                      index: 3,
                    ),
                  ],
                ),
              ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              page(currentIndex),
              bottomNav(currentIndex),
            ],
          ),
        );
      },
    );
  }
}

class BottomNavigationCart extends StatelessWidget {
  const BottomNavigationCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget checkout() {
      return Container(
        margin: EdgeInsets.only(
          top: 34,
          left: defaultMargin + 4,
          right: defaultMargin + 4,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Total',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Rp. 80.000',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 27,
            ),
            SizedBox(
              width: double.infinity,
              height: 36,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPembayaranPage(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: kYellowColor1,
                ),
                child: Text(
                  'Check Out Now',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            offset: Offset(0, 1),
            spreadRadius: 1,
            color: kBlackColor.withOpacity(0.25),
          ),
        ],
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          checkout(),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 53,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                NavigationItem(
                  icon: 'icon_home.png',
                  index: 0,
                ),
                NavigationItem(
                  icon: 'icon_favorite.png',
                  index: 1,
                ),
                NavigationItem(
                  icon: 'icon_cart.png',
                  index: 2,
                ),
                NavigationItem(
                  icon: 'icon_profile_nav.png',
                  index: 3,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
        ],
      ),
    );
  }
}
