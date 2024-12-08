import 'package:get/instance_manager.dart';
import 'package:terralith/features/presentation/auth/username/username_logic.dart';

class UsernameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UsernameLogic());
  }
}
