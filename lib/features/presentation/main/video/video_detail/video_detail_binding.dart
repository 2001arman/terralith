import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/video/video_detail/video_detail_logic.dart';

class VideoDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoDetailLogic());
  }
}
