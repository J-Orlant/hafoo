import 'package:flutter/material.dart';
import 'package:hafoo/bloc/page/page_cubit.dart';
import 'package:hafoo/models/user_model.dart';
import 'package:hafoo/provider/auth_provider.dart';
import 'package:hafoo/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    UserModel user = authProvider.user;
    Widget header() {
      return AppBar(
        backgroundColor: kYellowColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/profile_rimuru.png",
                    width: 64,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hallo, ${user.name}",
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "@${user.username}",
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/login', (route) => false);
                    context.read<PageCubit>().setPage(0);
                  },
                  child: Image.asset(
                    "assets/icon_exit.png",
                    color: kWhiteColor,
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: secondaryColor,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Akun",
                style: yellowTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: menuItem("Ubah Profile"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/orderan');
                },
                child: menuItem("Orderanmu"),
              ),
              menuItem("Bantuan"),
              SizedBox(height: 30),
              Text(
                "Umum",
                style: yellowTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              menuItem("Kebijakan Pribadi"),
              menuItem("Jangka waktu layanan"),
              menuItem("Rating aplikasi"),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
