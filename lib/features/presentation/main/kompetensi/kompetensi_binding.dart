import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/kompetensi/kompetensi_logic.dart';

class KompetensiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KompetensiLogic());
  }
}
