import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/main_logic.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

class MainUi extends StatelessWidget {
  static const String namePath = '/main_page';
  final logic = Get.find<MainLogic>();
  final state = Get.find<MainLogic>().state;
  MainUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 210,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              gradient: mainGradient,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top),
                const SizedBox(height: 18),
                Text(
                  'Selamat Datang, ',
                  style: whiteTextStyle.copyWith(fontSize: 13),
                ),
                Text(
                  'Arman Maulana !',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: extraBold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
