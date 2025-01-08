import 'package:get/get.dart';
import 'package:terralith/features/application/auth_app_service.dart';
import 'package:terralith/features/presentation/auth/login/login_logic.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginLogic());
    Get.lazyPut(() => AuthAppService());
  }
}
