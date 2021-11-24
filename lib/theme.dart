import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Margin
double defaultMargin = 20.0;

// Color
Color kWhiteColor = Color(0xffFFFFFF);
Color kYellowColor1 = Color(0xffFFD142);
Color kYellowColor2 = Color(0xffFFD142).withOpacity(0.5);
Color kBlackColor = Color(0xff000000);
Color kRedColor = Color(0xffFF4D42).withOpacity(0.2);
Color kGreenColor = Color(0xffC2FF42).withOpacity(0.2);
Color kSubtitleColor = Color(0xff504F5E);
Color secondaryColor = Color(0xff999999);
Color kGreyColor = Color(0xffC4C4C4);
// FontWeight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

// TextStyle
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);

TextStyle yellowTextStyle = GoogleFonts.poppins(
  color: kYellowColor1,
);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: kSubtitleColor,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);

// BoxShadow

BoxShadow defaultBoxShadow = BoxShadow(
  blurRadius: 5,
  offset: Offset(0, 1),
  color: kBlackColor.withOpacity(0.25),
);
