import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/application/quiz_app_service.dart';
import 'package:terralith/features/domain/quiz/model/quiz_result_model.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_result/quiz_result_ui.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_state.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

class QuizLogic extends GetxController {
  final _appService = Get.find<QuizAppService>();
  final QuizState state = QuizState();

  Timer? _timer;
  late String title;

  @override
  void onInit() {
    title = Get.arguments.length > 0 ? Get.arguments[0] : 'Evaluasi Akhir';
    state.quizList = _appService.getQuizData(materi: title);
    startTimer();
    super.onInit();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  void startTimer() {
    if (_timer != null) {
      _timer!.cancel(); // Cancel any existing timer
    }

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.remainingTime > 0) {
        state.remainingTime--;
      } else {
        return gotoResult();
      }
    });
  }

  String get timerText {
    int minutes = state.remainingTime.value ~/ 60;
    int seconds = state.remainingTime.value % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  void gotoResult() {
    _timer!.cancel();
    final result = QuizResultModel(
        title: title,
        benar: state.soalBenar,
        salah: state.soalSalah,
        point: state.poin.value);
    Get.offAndToNamed(
      QuizResultUi.namePath,
      arguments: [result, title],
    );
  }

  void nextSoal(bool benar) {
    if (Get.isDialogOpen == true) {
      Get.back();
      if (benar) {
        state.poin += 20;
        state.soalBenar++;
      } else {
        state.soalSalah++;
      }
      if (state.activeSoal.value == state.quizList.length - 1) {
        return gotoResult();
      }
      state.selectedJawaban.value = null;
      state.activeSoal.value++;
      return;
    }
  }

  void checkSoalDialog() {
    String jawabanBenar = state.quizList[state.activeSoal.value].jawabanBenar;
    bool benar = state.selectedJawaban.value == jawabanBenar;
    int poin = benar ? 20 : 0;
    Get.dialog(
      GestureDetector(
        onTap: () => nextSoal(benar),
        child: Container(
          width: Get.width,
          height: Get.height,
          color: kBlueLightColor.withValues(alpha: 0.9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                benar ? 'assets/icons/benar.png' : 'assets/icons/salah.png',
                width: 160,
              ),
              Text(
                'Jawaban ${benar ? 'Benar' : 'Salah'}\n+ $poin poin',
                style: blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: extraBold),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              if (!benar)
                Text(
                  'Kunci Jawaban:\n $jawabanBenar',
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: extraBold),
                  textAlign: TextAlign.center,
                ),
              if (!benar) const Spacer(),
            ],
          ),
        ),
      ),
    );
    Future.delayed(
      const Duration(seconds: 2),
      () => nextSoal(benar),
    );
  }
}
