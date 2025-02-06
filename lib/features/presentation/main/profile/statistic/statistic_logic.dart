import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:terralith/features/application/materi_app_service.dart';
import 'package:terralith/features/application/quiz_app_service.dart';
import 'package:terralith/features/presentation/main/profile/statistic/statistic_state.dart';

class StatisticLogic extends GetxController {
  final _appService = Get.find<QuizAppService>();
  final _materiAppService = Get.find<MateriAppService>();
  final StatisticState state = StatisticState();

  @override
  void onInit() async {
    getQuizData();
    getMateriDone();
    getEvaluasiAkhir();
    getEvaluasiRank();
    super.onInit();
  }

  Future<void> getQuizData() async {
    final data = await _appService.getQuizResult();
    return data.fold(
      (l) => EasyLoading.showError(l.message!),
      (r) {
        for (var data in r) {
          final selected = state.quizResult
              .indexWhere((result) => result.quizNumber == data.quizNumber);
          state.quizResult[selected] = data;
        }
      },
    );
  }

  Future<void> getMateriDone() async {
    final data = await _materiAppService.getMateriDone();
    return data.fold(
      (l) => EasyLoading.showError(l.message!),
      (r) => state.materiDone.value = r,
    );
  }

  Future<void> getEvaluasiAkhir() async {
    final data = await _appService.getEvaluasiResult();
    return data.fold(
      (l) => EasyLoading.showError(l.message!),
      (r) => state.evaluasi.value = r,
    );
  }

  Future<void> getEvaluasiRank() async {
    final data = await _appService.getEvaluasiRank();
    return data.fold(
      (l) => EasyLoading.showError(l.message!),
      (r) => state.rank.value = r,
    );
  }
}
