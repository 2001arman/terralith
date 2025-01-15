import 'package:get/get.dart';
import 'package:terralith/features/application/auth_app_service.dart';
import 'package:terralith/features/presentation/main/profile/verifikasi/verifikasi_logic.dart';

class VerifikasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifikasiLogic());
    Get.lazyPut(() => AuthAppService());
  }
}
