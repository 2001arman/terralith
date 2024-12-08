import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/main_logic.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainLogic());
  }
}
