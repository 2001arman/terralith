import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kBackGroundColor = const Color(0xFF001F3F);
Color kBlackColor = const Color(0xFF001F3F);
Color kTextFormColor = const Color(0xFFD6E6F2).withValues(alpha: 0.6);
Color kMainColor = const Color(0xFF001F3F);
Color kWhiteColor = const Color(0xFFFFFFFF);
Color kGreyColor = const Color(0xFFD9D9D9);

Color kBlueColor = const Color(0xFF769FCD);
Color kDarkBlueColor = const Color(0xFF4F92DD);
Color kDarkBoldBlueColor = const Color(0xFF4F92DD);
Color kBlueSemiLightColor = const Color(0xFFD6E6F2);
Color kBlueLightColor = const Color(0xFFB9D7EA);
Color kYellowColor = const Color(0xFFFFCA0F);

Color kGreenColor = const Color(0xFF39B54A);
Color kRedColor = const Color(0xFFFF3636);

Color kDividerColor = const Color(0xFFE4E4E4);

TextStyle whiteTextStyle = GoogleFonts.poppins(color: Colors.white);
TextStyle blackTextStyle = GoogleFonts.poppins(color: kBlackColor);
TextStyle mainTextStyle = GoogleFonts.poppins(color: kMainColor);
TextStyle darkBlueTextStyle = GoogleFonts.poppins(color: kDarkBlueColor);
TextStyle blueTextStyle = GoogleFonts.poppins(color: kBlueColor);
TextStyle darkBoldBlueTextStyle =
    GoogleFonts.poppins(color: kDarkBoldBlueColor);
TextStyle blueSemiLightTextStyle =
    GoogleFonts.poppins(color: kBlueSemiLightColor);
TextStyle greyTextStyle = GoogleFonts.poppins(color: kGreyColor);

LinearGradient mainGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    kBlueColor,
    kBlueLightColor,
  ],
);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

BoxShadow defaultBoxShadow = BoxShadow(
  offset: const Offset(0, 4),
  blurRadius: 4,
  spreadRadius: 0,
  color: kBlackColor.withValues(alpha: 0.25),
);
