import 'package:get/get.dart';
import 'package:terralith/features/application/quiz_app_service.dart';
import 'package:terralith/features/presentation/main/profile/statistic/statistic_logic.dart';

class StatisticBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StatisticLogic());
    Get.lazyPut(() => QuizAppService());
  }
}
