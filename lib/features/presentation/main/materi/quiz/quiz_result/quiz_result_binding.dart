import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_result/quiz_result_logic.dart';

class QuizResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizResultLogic());
  }
}
