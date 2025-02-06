import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/evaluasi_akhir/evaluasi_akhir_logic.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';
import 'package:terralith/utility/utils/custom_dialog.dart';

class EvaluasiAkhirUi extends StatelessWidget {
  static const String namePath = '/evaluasi_akhir_page';
  final logic = Get.find<EvaluasiAkhirLogic>();
  final state = Get.find<EvaluasiAkhirLogic>().state;
  EvaluasiAkhirUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget button({
      required String title,
      required bool isNext,
      required VoidCallback onTap,
    }) {
      return Expanded(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kDarkBlueColor,
            ),
            child: Row(
              children: [
                isNext
                    ? Icon(Icons.arrow_back_ios, color: kWhiteColor)
                    : const SizedBox(),
                Expanded(
                  child: Text(
                    title,
                    style:
                        whiteTextStyle.copyWith(fontSize: 15, fontWeight: bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                isNext
                    ? const SizedBox()
                    : Icon(Icons.arrow_forward_ios, color: kWhiteColor),
              ],
            ),
          ),
        ),
      );
    }

    Widget containerWidget({required Widget child}) {
      return Container(
        height: 35,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: kDarkBlueColor,
        ),
        child: child,
      );
    }

    Widget progress() {
      return Row(
        children: [
          Expanded(
            child: Text(
              'Soal ${state.activeSoal.value + 1}',
              style: darkBlueTextStyle.copyWith(fontSize: 24, fontWeight: bold),
            ),
          ),
          containerWidget(
            child: Row(
              children: [
                Icon(
                  Icons.timer,
                  color: kWhiteColor,
                  size: 18,
                ),
                const SizedBox(width: 4),
                Obx(
                  () => Text(
                    logic.timerText,
                    style: whiteTextStyle.copyWith(
                        fontSize: 12, fontWeight: semiBold),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => CustomDialog.finishDialog(onTap: logic.gotoResult),
            child: containerWidget(
              child: Text(
                'Selesai',
                style:
                    whiteTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),
              ),
            ),
          ),
        ],
      );
    }

    Widget pilihanWidget({
      required String jawaban,
      required String alphabet,
      required int index,
    }) {
      return GestureDetector(
        onTap: () => logic.selectJawaban(index: index, jawaban: jawaban),
        child: Obx(
          () => Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: kDarkBlueColor),
              color: state.selectedJawabanAll[state.activeSoal.value].jawaban
                          .value ==
                      jawaban
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
                    jawaban,
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
          shadowColor: kBlackColor.withValues(alpha: 0.25),
          automaticallyImplyLeading: false,
          title: Text(
            'Evaluasi Akhir',
            style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: SafeArea(
          child: Obx(
            () => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Visibility(
                    visible: state.activeSoal.value != 0,
                    replacement: const Spacer(),
                    child: button(
                      title: 'Sebelumnya',
                      isNext: true,
                      onTap: () => state.activeSoal.value--,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Visibility(
                    visible:
                        state.activeSoal.value != state.quizList.length - 1,
                    replacement: const Spacer(),
                    child: button(
                      title: 'Selanjutnya',
                      isNext: false,
                      onTap: () => state.activeSoal.value++,
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ),
        body: Obx(
          () => ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 26),
            children: [
              progress(),
              const SizedBox(height: 20),
              Text(
                state.quizList[state.activeSoal.value].soal,
                style:
                    blackTextStyle.copyWith(fontSize: 15, fontWeight: medium),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              ...state.quizList[state.activeSoal.value].jawaban
                  .asMap()
                  .entries
                  .map(
                    (data) => pilihanWidget(
                      jawaban: data.value,
                      alphabet: state.alphabet[data.key],
                      index: state.activeSoal.value,
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
