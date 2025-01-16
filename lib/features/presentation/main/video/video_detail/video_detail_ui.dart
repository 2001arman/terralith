import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/video/video_detail/video_detail_logic.dart';
import 'package:terralith/features/presentation/main/video/video_logic.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../utility/shared/constants/constants_ui.dart';

class VideoDetailUi extends StatelessWidget {
  static const String namePath = '/video_detail_page';
  final logic = Get.find<VideoDetailLogic>();
  final parentLogic = Get.find<VideoLogic>();
  VideoDetailUi({super.key});

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: logic.youtubeController,
        showVideoProgressIndicator: true,
        progressColors: const ProgressBarColors(
          playedColor: Color(0xFF3C9EBB),
          handleColor: Color(0xFF3ea2c1),
        ),
        onReady: () {},
      ),
      onExitFullScreen: () async {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitDown,
          DeviceOrientation.portraitUp,
        ]);
      },
      onEnterFullScreen: () async {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
        ]);
      },
      builder: (context, player) {
        return Scaffold(
          backgroundColor: kWhiteColor,
          appBar: AppBar(
            iconTheme: IconThemeData(color: kBlueColor),
            backgroundColor: kBlueSemiLightColor,
            shadowColor: kBlackColor.withOpacity(0.25),
            title: Text(
              'Video',
              style:
                  blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
            ),
            centerTitle: true,
          ),
          body: ListView(
            padding: EdgeInsets.zero,
            children: [
              Listener(
                behavior: HitTestBehavior.translucent,
                onPointerDown: (event) {},
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: Platform.isAndroid
                        ? Get.height * .25 > 225
                            ? 225
                            : Get.height * .25
                        : 225,
                  ),
                  child: player,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      logic.item.title,
                      style: blackTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: semiBold,
                        color: const Color(0xFF3A6D8C),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      logic.item.formattedDateTime,
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Praktik kependikan mata pelajaran Geografi Kelas XI  SMK Darul ‘Ulum Muhammadiyah Galur materi Dinamika Kependudukan',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),

                    // video lainnya
                    const SizedBox(height: 40),
                    Text(
                      'Video Lainnya',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 12),
                    ...parentLogic.state.listYoutube
                        .where((data) => data.videoId != logic.item.videoId)
                        .map(
                          (data) => Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () => logic.goOtherVideo(data: data),
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: kBlackColor,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              'https://img.youtube.com/vi/${data.videoId}/0.jpg'),
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/icons/play.png',
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.title,
                                        style: blackTextStyle.copyWith(
                                            fontWeight: medium, fontSize: 13),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        data.formattedDateTime,
                                        style: blackTextStyle.copyWith(
                                            fontSize: 10, fontWeight: light),
                                        textAlign: TextAlign.justify,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
