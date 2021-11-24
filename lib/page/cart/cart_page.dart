import 'package:flutter/material.dart';
import 'package:hafoo/bloc/page/page_cubit.dart';
import 'package:hafoo/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hafoo/widget/cart_card.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final items = List<String>.generate(2, (i) => "Ryujin Punyaku \u2665");
  int jumlah = 2;
  bool isDismiss = false;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: kYellowColor1,
        centerTitle: true,
        title: Text(
          "Keranjang",
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyCart() {
      return Expanded(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image_keranjang.png",
                width: 79,
              ),
              SizedBox(height: 23),
              Text(
                "Ups! Keranjang Anda kosong",
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
        child: ListView.builder(
          itemCount: items.length,
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 28,
          ),
          itemBuilder: (context, index) {
            return Dismissible(
              key: UniqueKey(),
              direction: DismissDirection.endToStart,
              background: Container(
                margin: EdgeInsets.only(
                  bottom: 20,
                ),
                padding: EdgeInsets.only(
                  top: 26,
                  bottom: 22,
                  left: 9,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kYellowColor1,
                  boxShadow: [
                    BoxShadow(
                      color: kBlackColor.withOpacity(0.25),
                      blurRadius: 5,
                    ),
                  ],
                ),
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/icon_trash.png',
                  width: 20,
                  color: kWhiteColor,
                ),
              ),
              dismissThresholds: const {
                DismissDirection.startToEnd: 0.1,
                DismissDirection.endToStart: 0.7
              },
              // confirmDismiss: (direction) async {
              //   return await showDialog(
              //     context: context,
              //     builder: (context) {
              //       return AlertDialog(
              //         title: const Text('Konfirmasi'),
              //         content: const Text('Yakin ingin menghapus pesanan ?'),
              //         actions: [
              //           FlatButton(
              //             onPressed: () {
              //               Navigator.of(context).pop(true);
              //             },
              //             child: const Text('Delete'),
              //           ),
              //           FlatButton(
              //             onPressed: () {
              //               Navigator.of(context).pop(false);
              //             },
              //             child: const Text('Cancel'),
              //           ),
              //         ],
              //       );
              //     },
              //   );
              // },
              onDismissed: (direction) {
                print(items);
                setState(() {
                  items.removeAt(index);
                });

                // Then show a snackbar.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    content: Text('Pesanan berhasil di hapus !'),
                  ),
                );
              },
              child: CartCard(
                isDismiss: isDismiss,
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          header(),
          content(),
          // emptyCart(),
        ],
      ),
    );
  }
}
