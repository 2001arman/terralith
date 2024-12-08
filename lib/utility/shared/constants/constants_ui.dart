import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kBackGroundColor = const Color(0xFF001F3F);
Color kBlackColor = const Color(0xFF001F3F);
Color kTextFormColor = const Color(0xFFD6E6F2).withOpacity(0.6);
Color kMainColor = const Color(0xFF001F3F);

Color kBlueColor = const Color(0xFF769FCD);
Color kBlueLightColor = const Color(0xFFB9D7EA);

TextStyle whiteTextStyle = GoogleFonts.poppins(color: Colors.white);
TextStyle mainTextStyle = GoogleFonts.poppins(color: kMainColor);

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
