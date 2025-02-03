import 'package:get/get.dart';
import 'package:terralith/features/application/materi_app_service.dart';
import 'package:terralith/features/presentation/main/materi/sub_materi/sub_materi_logic.dart';

class SubMateriBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubMateriLogic());
    Get.lazyPut(() => MateriAppService());
  }
}
