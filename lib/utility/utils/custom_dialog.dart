import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/constants/constants_ui.dart';

class CustomDialog {
  static Widget button({
    required String title,
    required Color backgroundColor,
    required Color textColor,
    Color? borderColor,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: backgroundColor,
            border: borderColor != null
                ? Border.all(color: borderColor, width: 1)
                : null,
          ),
          child: Text(
            title,
            style: blueTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  static void showQuizDialog({
    required VoidCallback onTap,
    required int totalSoal,
    required int totalMenit,
    required String title,
  }) {
    Get.dialog(
      Dialog(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kWhiteColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: Get.back,
                  child: Image.asset(
                    'assets/icons/close.png',
                    width: 45,
                    height: 45,
                  ),
                ),
              ),
              Image.asset(
                'assets/icons/kuis-ilustration.png',
                width: 75,
                height: 75,
              ),
              const SizedBox(height: 7),
              Text(
                'Apakah kamu yakin\ningin mengerjakan $title?',
                style: blueTextStyle.copyWith(fontSize: 15, fontWeight: bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/question.png',
                    width: 20,
                    height: 20,
                  ),
                  Text(
                    '$totalSoal butir',
                    style:
                        blueTextStyle.copyWith(fontSize: 13, fontWeight: bold),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/clock.png',
                    width: 20,
                    height: 20,
                  ),
                  Text(
                    '$totalMenit menit',
                    style:
                        blueTextStyle.copyWith(fontSize: 13, fontWeight: bold),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  button(
                    title: 'Kembali',
                    backgroundColor: Colors.transparent,
                    borderColor: kBlueColor,
                    textColor: kBlueColor,
                    onTap: Get.back,
                  ),
                  const SizedBox(width: 20),
                  button(
                    title: 'Yakin',
                    backgroundColor: kBlueColor,
                    textColor: kWhiteColor,
                    onTap: onTap,
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  static void finishDialog({
    required VoidCallback onTap,
  }) {
    Get.dialog(
      Dialog(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kWhiteColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: Get.back,
                  child: Image.asset(
                    'assets/icons/close.png',
                    width: 45,
                    height: 45,
                  ),
                ),
              ),
              Image.asset(
                'assets/icons/kuis-ilustration.png',
                width: 75,
                height: 75,
              ),
              const SizedBox(height: 7),
              Text(
                'Apakah kamu yakin ingin menyelesaikan evaluasi?',
                style: blueTextStyle.copyWith(fontSize: 15, fontWeight: bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  button(
                    title: 'Kembali',
                    backgroundColor: Colors.transparent,
                    borderColor: kBlueColor,
                    textColor: kBlueColor,
                    onTap: Get.back,
                  ),
                  const SizedBox(width: 20),
                  button(
                    title: 'Yakin',
                    backgroundColor: kBlueColor,
                    textColor: kWhiteColor,
                    onTap: onTap,
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
