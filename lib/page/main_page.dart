import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hafoo/bloc/page/page_cubit.dart';
import 'package:hafoo/page/cart/cart_page.dart';
import 'package:hafoo/page/favorite/favorite_page.dart';
import 'package:hafoo/page/home/home_page.dart';
import 'package:hafoo/page/profile/profile.dart';
import 'package:hafoo/theme.dart';
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

    Widget bottomNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
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
              bottomNav(),
            ],
          ),
        );
      },
    );
  }
}
