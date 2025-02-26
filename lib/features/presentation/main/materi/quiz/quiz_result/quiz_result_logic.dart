import 'package:get/get.dart';
import 'package:terralith/features/application/quiz_app_service.dart';
import 'package:terralith/features/domain/quiz/model/quiz_result_model.dart';
import 'package:terralith/features/presentation/main/main_ui.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_ui.dart';

class QuizResultLogic extends GetxController {
  final _appService = Get.find<QuizAppService>();

  late QuizResultModel result;
  String textLolos =
      'Kerja bagus! \nKamu berhasil menuntaskan\nkuis pada materi ini. \nLanjutkan ke materi berikutnya.';
  String textTidakLolos =
      'Sayang sekali \nKamu belum menuntaskan\nkuis pada materi ini. \nJangan putus asa dan coba lagi!';

  @override
  void onInit() {
    result = Get.arguments[0];
    _appService.createQuizResult(quizResult: result);
    super.onInit();
  }

  void createQuizData() {
    _appService.createQuizResult(quizResult: result);
  }

  void getBackHome() {
    Get.offAllNamed(MainUi.namePath);
  }

  void ulangiTest() {
    Get.offAndToNamed(
      QuizUi.namePath,
      arguments: [Get.arguments[1]],
    );
  }
}
