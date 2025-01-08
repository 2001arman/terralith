import 'package:get/get.dart';
import 'package:terralith/features/presentation/splash_screen/splash_screen_logic.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenLogic());
  }
}
