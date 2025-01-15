import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/profile/change-password/change_password_logic.dart';

import '../../../../application/auth_app_service.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordLogic());
    Get.lazyPut(() => AuthAppService());
  }
}
