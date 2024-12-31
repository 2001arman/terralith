import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/materi/materi_logic.dart';

class MateriBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MateriLogic());
  }
}
