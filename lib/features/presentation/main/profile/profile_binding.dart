import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/profile/profile_logic.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileLogic());
  }
}
