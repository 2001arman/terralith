import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/profile/statistic/statistic_logic.dart';

import '../../../../../utility/shared/constants/constants_ui.dart';
import '../../../../domain/quiz/model/quiz_result_model.dart';

class StatisticUi extends StatelessWidget {
  static const String namePath = '/statistic_page';
  final logic = Get.find<StatisticLogic>();
  final state = Get.find<StatisticLogic>().state;
  StatisticUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget topItemWidget({
      required String icon,
      required String title,
      required String value,
    }) {
      return Expanded(
        child: Container(
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFEBF3F8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                width: 35,
                height: 35,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: blueTextStyle.copyWith(fontWeight: medium),
              ),
              Text(
                value,
                style: blueTextStyle.copyWith(fontWeight: bold, fontSize: 24),
              ),
            ],
          ),
        ),
      );
    }

    Widget quizPoinWidget(
        {required int index, required QuizResultModel result}) {
      return Container(
        width: double.infinity,
        height: 91,
        margin: const EdgeInsets.only(top: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFEBF3F8),
        ),
        child: Row(
          children: [
            const Spacer(flex: 3),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: kBlueColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Kuis',
                    style: whiteTextStyle.copyWith(fontWeight: medium),
                  ),
                  Text(
                    '$index',
                    style: whiteTextStyle.copyWith(
                        fontWeight: bold, fontSize: 24, height: 24 / 24),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: kDarkBlueColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${result.point}',
                    style: whiteTextStyle.copyWith(
                        fontWeight: bold, fontSize: 24, height: 24 / 24),
                  ),
                  Text(
                    'Poin',
                    style: whiteTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/correct.png',
                      width: 30,
                      height: 30,
                    ),
                    Text(
                      '${result.benar} soal',
                      style: blueTextStyle.copyWith(fontWeight: medium),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/wrong.png',
                      width: 30,
                      height: 30,
                    ),
                    Text(
                      '${result.benar} soal',
                      style: blueTextStyle.copyWith(fontWeight: medium),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(flex: 3),
          ],
        ),
      );
    }

    Widget evaluasiWidget() {
      return Container(
        width: double.infinity,
        height: 91,
        margin: const EdgeInsets.only(top: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kBlueColor,
        ),
        child: Row(
          children: [
            const Spacer(flex: 3),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFEBF3F8),
              ),
              child: Center(
                child: Text(
                  'Evaluasi Akhir',
                  style:
                      blueTextStyle.copyWith(fontWeight: medium, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: kYellowColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '-',
                    style: whiteTextStyle.copyWith(
                        fontWeight: bold, fontSize: 24, height: 24 / 24),
                  ),
                  Text(
                    'Poin',
                    style: whiteTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/correct.png',
                      width: 25,
                      height: 25,
                    ),
                    Text(
                      '- soal',
                      style: whiteTextStyle.copyWith(fontWeight: medium),
                    ),
                  ],
                ),
                SizedBox(
                  width: 68,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/wrong.png',
                        width: 25,
                        height: 25,
                      ),
                      Text(
                        '- soal',
                        style: whiteTextStyle.copyWith(fontWeight: medium),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 67,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/cup.png',
                        width: 25,
                        height: 25,
                      ),
                      const SizedBox(width: 0),
                      Text(
                        '-/36',
                        style: whiteTextStyle.copyWith(fontWeight: medium),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(flex: 3),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlueColor),
        backgroundColor: kBlueSemiLightColor,
        shadowColor: kBlackColor.withOpacity(0.25),
        title: Text(
          'Statistik',
          style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          children: [
            // top item
            Row(
              children: [
                topItemWidget(
                  icon: 'assets/icons/statistic-materi.png',
                  title: 'Materi',
                  value: '10',
                ),
                const SizedBox(width: 20),
                topItemWidget(
                  icon: 'assets/icons/statistic-done.png',
                  title: 'Selesai',
                  value: '7',
                ),
              ],
            ),
            // quiz poin item
            ...state.quizResult.asMap().entries.map(
                  (data) => quizPoinWidget(
                    index: data.key + 1,
                    result: data.value,
                  ),
                ),
            evaluasiWidget(),
          ],
        ),
      ),
    );
  }
}
