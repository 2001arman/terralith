import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/video/video_logic.dart';

class VideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoLogic());
  }
}
