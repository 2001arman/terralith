import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/evaluasi_akhir/hasil_evaluasi/hasil_evaluasi_logic.dart';

class HasilEvaluasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HasilEvaluasiLogic());
  }
}
