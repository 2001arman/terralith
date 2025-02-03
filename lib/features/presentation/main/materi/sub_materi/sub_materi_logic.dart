import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/domain/materi/materi_model.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_ui.dart';
import 'package:terralith/features/presentation/main/materi/sub_materi/sub_materi_state.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

class SubMateriLogic extends GetxController {
  final SubMateriState state = SubMateriState();

  late MateriModel materi;

  @override
  void onInit() {
    materi = Get.arguments[0];
    super.onInit();
  }

  Widget button({
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

  void showQuizDialog() {
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
                'Apakah kamu yakin\ningin mengerjakan kuis?',
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
                    '5 butir',
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
                    '5 menit',
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
                    onTap: () {
                      Get.back();
                      Get.toNamed(
                        QuizUi.namePath,
                        arguments: [materi.title],
                      );
                    },
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
