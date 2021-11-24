import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';

class DetailFoodPage extends StatefulWidget {
  const DetailFoodPage({Key? key}) : super(key: key);

  @override
  State<DetailFoodPage> createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage> {
  int jumlahMakanan = 1;
  bool like = false;
  @override
  Widget build(BuildContext context) {
    // NOTE: Gambar Makanan

    Widget gambar() {
      return Container(
        width: double.infinity,
        height: 266,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_risoles.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget header() {
      return SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            top: 28,
            bottom: 158,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kWhiteColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icon_back.png',
                      width: 8,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    like = !like;
                  });
                  if (like == false) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text('Makanan berhasil dihapus'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.blueAccent,
                        content: Text('Makanan berhasil disimpan'),
                      ),
                    );
                  }
                },
                child: Container(
                  width: 39,
                  height: 39,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icon_love.png',
                      width: 23,
                      color: (like) ? kYellowColor1 : kGreyColor,
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
      Widget namaHarga() {
        return Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Risoles',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 24,
                  ),
                ),
              ),
              Text(
                'Rp. 10.000',
                style: yellowTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        );
      }

      Widget type() {
        return Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            children: [
              DetailFoodType(
                image: 'icon_star.png',
                text: '4.5',
                color: kYellowColor1.withOpacity(0.2),
              ),
              DetailFoodType(
                image: 'icon_fire.png',
                text: 'Kal',
                color: kRedColor,
              ),
              DetailFoodType(
                image: '',
                text: 'Ringan',
                color: kGreenColor,
              ),
            ],
          ),
        );
      }

      Widget detail() {
        return Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Detail',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Risoles, atau hanya risol saja, adalah pastri berisi daging, biasanya daging cincang, dan sayuran yang dibungkus dadar, dan digoreng setelah dilapisi tepung panir dan kocokan telur ayam. ',
                style: blackTextStyle.copyWith(
                  color: Color(0xff838383),
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        );
      }

      Widget jumlah() {
        return Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    if (jumlahMakanan > 1) {
                      jumlahMakanan--;
                    }
                  });
                },
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: kYellowColor1,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.remove,
                      color: kWhiteColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 56,
                child: Center(
                  child: Text(
                    jumlahMakanan.toString(),
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    jumlahMakanan++;
                  });
                },
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: kYellowColor1,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: kWhiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget menuLain() {
        return Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Detail',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
              ),
              Container(
                height: 75,
                margin: EdgeInsets.only(top: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 97,
                      height: 73,
                      margin: EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/image_risoles.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 97,
                      height: 73,
                      margin: EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/image_risoles.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 97,
                      height: 73,
                      margin: EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/image_risoles.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 38,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            namaHarga(),
            SizedBox(
              height: 28,
            ),
            type(),
            SizedBox(
              height: 28,
            ),
            detail(),
            SizedBox(
              height: 12,
            ),
            jumlah(),
            SizedBox(
              height: 24,
            ),
            menuLain(),
            SizedBox(
              height: 120,
            ),
          ],
        ),
      );
    }

    Widget total() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 91,
          color: kYellowColor1,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin + 6,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Rp. 10.000',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 20,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kWhiteColor,
                  ),
                  child: Center(
                    child: Text(
                      'Add to cart',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                gambar(),
                ListView(
                  children: [
                    header(),
                    content(),
                  ],
                ),
              ],
            ),
            total(),
          ],
        ),
      ),
    );
  }
}

class DetailFoodType extends StatelessWidget {
  final String image;
  final Color color;
  final String text;
  const DetailFoodType({
    this.image = '',
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          children: [
            (image != '')
                ? Row(
                    children: [
                      Image.asset(
                        'assets/$image',
                        width: 12,
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  )
                : SizedBox(),
            Text(
              text,
              style: greyTextStyle.copyWith(
                color: Color(0xffAAAAAA),
                fontWeight: semiBold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
