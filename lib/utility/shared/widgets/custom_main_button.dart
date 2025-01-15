import 'package:flutter/material.dart';

import '../constants/constants_ui.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    required this.title,
    this.fontWeight,
    this.fontSize = 14,
    required this.onTap,
    this.height = 45,
    this.color,
  });
  final String title;
  final FontWeight? fontWeight;
  final double fontSize;
  final VoidCallback onTap;
  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 4),
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? kMainColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 4,
              color: kBlackColor.withOpacity(0.25),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: whiteTextStyle.copyWith(
              fontWeight: fontWeight,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
