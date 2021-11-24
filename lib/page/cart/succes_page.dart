import 'package:flutter/material.dart';
import 'package:hafoo/bloc/page/page_cubit.dart';
import 'package:hafoo/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 240,
              height: 240,
              child: Center(
                child: LottieBuilder.asset(
                  'assets/succes_animation.json',
                ),
              ),
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              'Transaksi Berhasil',
              style: blackTextStyle.copyWith(
                fontSize: 28,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 48,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: 80,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/orderan', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: kYellowColor1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Cek Pemesanan',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main-page', (route) => false);
                context.read<PageCubit>().setPage(0);
              },
              child: Text(
                'Kembali ke Home',
                style: yellowTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
