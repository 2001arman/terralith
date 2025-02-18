import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_result/quiz_result_logic.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

class QuizResultUi extends StatelessWidget {
  static const String namePath = '/quiz_result_page';
  final logic = Get.find<QuizResultLogic>();
  QuizResultUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget poinWidget() {
      return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: logic.result.point > 70 ? kGreenColor : kRedColor,
        ),
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: '${logic.result.point}\n',
              style: whiteTextStyle.copyWith(
                  fontWeight: extraBold, fontSize: 48, height: 1),
              children: [
                TextSpan(
                  text: 'Poin',
                  style: whiteTextStyle.copyWith(
                    fontWeight: extraBold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget benarSalahPoin({
      required bool isBenar,
      required int poin,
    }) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            isBenar ? 'assets/icons/benar.png' : 'assets/icons/salah.png',
            width: 50,
          ),
          Text(
            '$poin soal',
            style: blueTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
              color: const Color(0xFF2E81D3),
            ),
          )
        ],
      );
    }

    Widget cardWidget() {
      return Container(
        width: double.infinity,
        height: 230,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kBlueSemiLightColor,
          boxShadow: [defaultBoxShadow],
        ),
        child: Column(
          children: [
            Row(
              children: [
                poinWidget(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      benarSalahPoin(isBenar: true, poin: logic.result.benar),
                      benarSalahPoin(isBenar: false, poin: logic.result.salah),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              logic.result.point > 70 ? logic.textLolos : logic.textTidakLolos,
              style: blueTextStyle.copyWith(
                fontWeight: semiBold,
                color: const Color(0xFF2E81D3),
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget buttonIconWidget({
      required String icon,
      required VoidCallback onTap,
    }) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 90,
          height: 90,
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kBlueLightColor,
            boxShadow: [defaultBoxShadow],
          ),
          child: Image.asset(icon),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: Get.height * 0.6,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              boxShadow: [defaultBoxShadow],
              color: kBlueLightColor,
            ),
          ),
          SizedBox(
            width: Get.width,
            height: Get.height,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top),
                const Spacer(),
                Text(
                  'Selamat !!!',
                  style: blackTextStyle.copyWith(
                      fontSize: 32, fontWeight: extraBold),
                ),
                Text(
                  "Kamu baru saja menyelesaikan\nKuis ${logic.result.title}",
                  style: darkBoldBlueTextStyle.copyWith(
                    fontWeight: semiBold,
                    color: const Color(0xFF3A6D8C),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Image.asset(
                  'assets/images/quiz-result.png',
                  width: 220,
                ),
                const SizedBox(height: 8),
                cardWidget(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (logic.result.point < 70)
                      buttonIconWidget(
                        icon: 'assets/icons/ulangi.png',
                        onTap: logic.ulangiTest,
                      ),
                    const SizedBox(width: 18),
                    buttonIconWidget(
                      icon: 'assets/icons/home.png',
                      onTap: logic.getBackHome,
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
