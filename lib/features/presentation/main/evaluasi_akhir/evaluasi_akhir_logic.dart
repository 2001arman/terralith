import 'dart:async';

import 'package:get/get.dart';
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
    // final result = QuizResultModel(
    //   title: materiModel.title,
    //   benar: state.soalBenar,
    //   salah: state.soalSalah,
    //   point: state.poin.value,
    //   quizNumber: materiModel.quizNumber,
    // );
    // Get.offAndToNamed(
    //   QuizResultUi.namePath,
    //   arguments: [result, materiModel],
    // );
  }

  String get timerText {
    int minutes = state.remainingTime.value ~/ 60;
    int seconds = state.remainingTime.value % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  void selectJawaban({required int index, required String jawaban}) {
    state.selectedJawabanAll[index].jawaban.value = jawaban;
  }

  void hitungBenarSalah() {
    for (var i = 0; i < state.selectedJawabanAll.length - 1; i++) {
      if (state.selectedJawabanAll[i].jawaban.value ==
          state.quizList[i].jawabanBenar) {
        state.soalBenar++;
        state.poin += 4;
      } else {
        state.soalSalah++;
      }
    }
    Get.toNamed(HasilEvaluasiUi.namePath);
  }
}
