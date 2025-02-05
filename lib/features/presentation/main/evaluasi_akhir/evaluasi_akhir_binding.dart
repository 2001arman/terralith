import 'package:get/get.dart';
import 'package:terralith/features/application/quiz_app_service.dart';
import 'package:terralith/features/presentation/main/evaluasi_akhir/evaluasi_akhir_logic.dart';

class EvaluasiAkhirBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EvaluasiAkhirLogic());
    Get.lazyPut(() => QuizAppService());
  }
}
