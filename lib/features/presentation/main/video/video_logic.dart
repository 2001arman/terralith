import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/video/video_state.dart';

import '../../../application/video_app_service.dart';

class VideoLogic extends GetxController {
  final VideoAppService _appService = Get.find<VideoAppService>();
  final VideoState state = VideoState();

  @override
  void onInit() async {
    EasyLoading.show();
    final data = await _appService.getVideos();
    EasyLoading.dismiss();
    data.fold(
      (e) => EasyLoading.showError(e.message ?? ''),
      (res) => state.listYoutube.assignAll(res),
    );
    super.onInit();
  }
}
