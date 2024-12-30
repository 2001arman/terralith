import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../video_state.dart';

class VideoDetailLogic extends GetxController {
  late YoutubePlayerController youtubeController;
  late YoutubeItemModel item;

  @override
  void onInit() {
    Get.log('cek onInit');
    item = Get.arguments['item'];
    Get.log('cek item name ${item.title}');
    youtubeController = YoutubePlayerController(
      initialVideoId: item.id,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    super.onInit();
  }

  @override
  void dispose() {
    Get.log('cek on dispose');
    super.dispose();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    Get.log('cek on close');
    // youtubeController.dispose();
    super.onClose();
  }
}
