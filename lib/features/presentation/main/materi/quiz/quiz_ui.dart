import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_logic.dart';

import '../../../../../utility/shared/constants/constants_ui.dart';

class QuizUi extends StatelessWidget {
  static const String namePath = '/quis_page';
  final logic = Get.find<QuizLogic>();
  final state = Get.find<QuizLogic>().state;

  QuizUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget progressBar() {
      return Obx(
        () {
          int activeSoal = state.activeSoal.value + 1;
          return Column(
            children: [
              LinearProgressIndicator(
                value: activeSoal / state.quizList.length,
                backgroundColor: kGreyColor,
                color: const Color(0xFF6E89A9),
                minHeight: 15,
                borderRadius: BorderRadius.circular(5),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/question.png',
                    width: 20,
                    height: 20,
                    color: kBlueSemiLightColor,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    '${activeSoal.toString().padLeft(1, '0')}/${state.quizList.length}',
                    style:
                        blueTextStyle.copyWith(fontSize: 13, fontWeight: bold),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/icons/poin.png',
                    width: 20,
                    height: 20,
                    color: kBlueSemiLightColor,
                  ),
                  Text(
                    '${state.poin.value} poin',
                    style:
                        blueTextStyle.copyWith(fontSize: 13, fontWeight: bold),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/icons/clock.png',
                    width: 20,
                    height: 20,
                    color: kBlueSemiLightColor,
                  ),
                  Text(
                    logic.timerText,
                    style:
                        blueTextStyle.copyWith(fontSize: 13, fontWeight: bold),
                  ),
                ],
              ),
            ],
          );
        },
      );
    }

    Widget soalWidget({required String soal}) {
      return Container(
        width: double.infinity,
        height: 180,
        margin: const EdgeInsets.only(top: 20, bottom: 36),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kBlueLightColor,
          boxShadow: [defaultBoxShadow],
        ),
        child: AutoSizeText(
          soal,
          style: blackTextStyle.copyWith(fontSize: 50, fontWeight: bold),
          minFontSize: 15,
          maxFontSize: 50,
          maxLines: 10,
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget pilihanWidget({required String soal, required String alphabet}) {
      return GestureDetector(
        onTap: () => state.selectedJawaban.value = soal,
        child: Obx(
          () => Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: kDarkBlueColor),
              color: state.selectedJawaban.value == soal
                  ? kDarkBlueColor
                  : Colors.transparent,
            ),
            child: Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: kBlueSemiLightColor,
                  ),
                  child: Center(
                    child: Text(
                      alphabet,
                      style: blueTextStyle.copyWith(
                          fontSize: 20, fontWeight: extraBold),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    soal,
                    style: blackTextStyle.copyWith(
                        fontSize: 15, fontWeight: medium),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: kBlueColor),
          backgroundColor: kBlueSemiLightColor,
          shadowColor: kBlackColor.withOpacity(0.25),
          automaticallyImplyLeading: false,
          title: Text(
            'Kuis ${logic.title}',
            style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: SafeArea(
          child: Obx(
            () => Visibility(
              visible: state.selectedJawaban.value != null,
              child: GestureDetector(
                onTap: logic.checkSoalDialog,
                child: Container(
                  width: double.infinity,
                  height: 45,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kDarkBlueColor,
                  ),
                  child: Center(
                    child: Text(
                      'Cek Jawaban',
                      style: whiteTextStyle.copyWith(
                          fontSize: 15, fontWeight: bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Obx(
          () => ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 26),
            children: [
              progressBar(),
              soalWidget(soal: state.quizList[state.activeSoal.value].soal),
              ...state.quizList[state.activeSoal.value].jawaban
                  .asMap()
                  .entries
                  .map(
                    (data) => pilihanWidget(
                      soal: data.value,
                      alphabet: state.alphabet[data.key],
                    ),
                  ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
