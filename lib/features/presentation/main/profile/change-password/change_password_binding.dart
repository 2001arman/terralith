import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/profile/change-password/change_password_logic.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordLogic());
  }
}
