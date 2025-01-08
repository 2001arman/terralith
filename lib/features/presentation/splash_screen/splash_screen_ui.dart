import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/splash_screen/splash_screen_logic.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

class SplashScreenUi extends StatelessWidget {
  final logic = Get.find<SplashScreenLogic>();
  static const String namePath = '/splash_screen_page';
  
  SplashScreenUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Center(
        child: Image.asset(
          'assets/logo_text.png',
          width: 180,
        ),
      ),
    );
  }
}
