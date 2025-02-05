import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:terralith/features/domain/quiz/model/evaluasi_model.dart';
import 'package:terralith/features/presentation/main/evaluasi_akhir/evaluasi_akhir_state.dart';
import 'package:terralith/features/presentation/main/evaluasi_akhir/hasil_evaluasi/hasil_evaluasi_ui.dart';

import '../../../application/quiz_app_service.dart';

class EvaluasiAkhirLogic extends GetxController {
  final _appService = Get.find<QuizAppService>();
  EvaluasiAkhirState state = EvaluasiAkhirState();

  Timer? _timer;

  @override
  void onInit() {
    state.quizList = _appService.getQuizData(materi: 'Evaluasi Akhir');
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

  void gotoResult() {
    Get.back();
    _timer!.cancel();
    hitungBenarSalah();
  }

  String get timerText {
    int minutes = state.remainingTime.value ~/ 60;
    int seconds = state.remainingTime.value % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  void selectJawaban({required int index, required String jawaban}) {
    state.selectedJawabanAll[index].jawaban.value = jawaban;
  }

  void hitungBenarSalah() async {
    for (var i = 0; i < state.selectedJawabanAll.length - 1; i++) {
      if (state.selectedJawabanAll[i].jawaban.value ==
          state.quizList[i].jawabanBenar) {
        state.soalBenar++;
        state.poin += 4;
      } else {
        state.soalSalah++;
      }
    }
    EasyLoading.show();
    final evaluasi = EvaluasiModel(
      userId: '',
      nilai: state.poin.value,
      salah: state.soalSalah,
      benar: state.soalBenar,
      createdAt: DateTime.now(),
    );
    await _appService.createEvaluasiAkhir(evaluasi: evaluasi);
    EasyLoading.dismiss();
    Get.offAndToNamed(HasilEvaluasiUi.namePath, arguments: evaluasi);
  }
}
