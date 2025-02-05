import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/video/video_detail/video_detail_ui.dart';
import 'package:terralith/features/presentation/main/video/video_logic.dart';

import '../../../../utility/shared/constants/constants_ui.dart';

class VideoUi extends StatelessWidget {
  static const String namePath = '/video_page';
  final logic = Get.find<VideoLogic>();
  final state = Get.find<VideoLogic>().state;
  VideoUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlueColor),
        backgroundColor: kBlueSemiLightColor,
        shadowColor: kBlackColor.withValues(alpha: 0.25),
        title: Text(
          'Video',
          style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 22),
          children: state.listYoutube
              .map(
                (data) => Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Get.toNamed(
                            VideoDetailUi.namePath,
                            arguments: {
                              'item': data,
                            },
                          ),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
              )
              .toList(),
        ),
      ),
    );
  }
}
