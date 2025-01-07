import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../video_state.dart';
import 'video_detail_ui.dart';

class VideoDetailLogic extends GetxController {
  late YoutubePlayerController youtubeController;
  late YoutubeItemModel item;

  @override
  void onInit() {
    item = Get.arguments['item'];
    youtubeController = YoutubePlayerController(
      initialVideoId: item.id,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    super.onInit();
  }

  void goOtherVideo({required YoutubeItemModel data}) async {
    Get.back();
    await Get.delete<VideoDetailLogic>();
    Get.toNamed(
      VideoDetailUi.namePath,
      arguments: {
        'item': data,
      },
    );
  }
}