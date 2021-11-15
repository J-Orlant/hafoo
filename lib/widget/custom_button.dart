import 'package:flutter/material.dart';
import 'package:hafoo/theme.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final EdgeInsets margin;

  const CustomButton({
    required this.text,
    required this.onTap,
    this.margin = const EdgeInsets.only(
      top: 5,
    ),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 53,
        margin: margin,
        decoration: BoxDecoration(
          color: kYellowColor1,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: Text(
            text,
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
