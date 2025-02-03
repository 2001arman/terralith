import 'package:get/get.dart';
import 'package:terralith/features/application/quiz_app_service.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_logic.dart';

class QuizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizLogic());
    Get.lazyPut(() => QuizAppService());
  }
}
