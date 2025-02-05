import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:terralith/features/application/quiz_app_service.dart';
import 'package:terralith/features/presentation/main/profile/statistic/statistic_state.dart';

class StatisticLogic extends GetxController {
  final _appService = Get.find<QuizAppService>();
  final StatisticState state = StatisticState();

  @override
  void onInit() {
    getQuizData();
    super.onInit();
  }

  void getQuizData() async {
    EasyLoading.show();
    final data = await _appService.getQuizResult();
    EasyLoading.dismiss();
    data.fold(
      (l) => Get.log('error quiz $l'),
      (r) {
        for (var data in r) {
          final selected = state.quizResult
              .indexWhere((result) => result.quizNumber == data.quizNumber);
          state.quizResult[selected] = data;
        }
      },
    );
  }
}
