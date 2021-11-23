import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';

class OrderanPage extends StatelessWidget {
  const OrderanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kYellowColor1,
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: kWhiteColor,
          ),
        ),
        title: Text(
          'Orderanmu',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 24,
        ),
        children: const [
          OrderanTile(
            nama: 'Risoles Keju',
            gambar: 'image_risoles.png',
            harga: '20.000',
            jumlah: 2,
            status: 'Sedang dikemas',
          ),
          OrderanTile(
            nama: 'Dimsum',
            gambar: 'image_dimsum.png',
            harga: '10.000',
            jumlah: 1,
            status: 'Sedang dibuat',
          ),
        ],
      ),
    );
  }
}

class OrderanTile extends StatelessWidget {
  final String nama;
  final String gambar;
  final String harga;
  final int jumlah;
  final String status;
  const OrderanTile({
    required this.nama,
    required this.gambar,
    required this.harga,
    required this.jumlah,
    required this.status,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 18,
      ),
      padding: EdgeInsets.only(
        bottom: 18,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kGreyColor.withOpacity(0.3),
            width: 2,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 87,
            height: 60,
            margin: EdgeInsets.only(
              right: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/$gambar'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Rp.$harga',
                  style: yellowTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'X$jumlah',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                status,
                style: greyTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
