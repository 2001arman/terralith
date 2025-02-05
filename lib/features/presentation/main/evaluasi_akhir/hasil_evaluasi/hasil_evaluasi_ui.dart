import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/evaluasi_akhir/hasil_evaluasi/hasil_evaluasi_logic.dart';

import '../../../../../utility/shared/constants/constants_ui.dart';

class HasilEvaluasiUi extends StatelessWidget {
  static const String namePath = '/hasil_evaluasi_akhir';
  final logic = Get.find<HasilEvaluasiLogic>();
  final state = Get.find<HasilEvaluasiLogic>().state;
  HasilEvaluasiUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget itemContainer({
      required String icon,
      required String value,
      required String title,
    }) {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(icon, width: 22),
                Text(
                  value,
                  style: blueTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                ),
              ],
            ),
            Text(
              title,
              style: greyTextStyle.copyWith(
                fontSize: 12,
                color: const Color(0xFFB4B4B4),
              ),
            ),
          ],
        ),
      );
    }

    Widget topBarContainer() {
      return Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/icons/home.png',
              width: 30,
            ),
          ),
          SizedBox(
            width: Get.width,
            child: Column(
              children: [
                Text(
                  'Hasil',
                  style: darkBlueTextStyle.copyWith(
                      fontSize: 24, fontWeight: bold),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 237,
                  width: Get.width * 0.7,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: 196,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: kWhiteColor,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 50),
                              Text(
                                '90',
                                style: darkBlueTextStyle.copyWith(
                                    fontSize: 50, fontWeight: bold),
                              ),
                              const SizedBox(height: 10),
                              Divider(
                                color: kDividerColor,
                                height: 2,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    itemContainer(
                                      icon: 'assets/icons/question_orange.png',
                                      value: '30',
                                      title: 'Soal',
                                    ),
                                    VerticalDivider(
                                      width: 2,
                                      color: kGreyColor,
                                    ),
                                    itemContainer(
                                      icon: 'assets/icons/benar.png',
                                      value: '27',
                                      title: 'Benar',
                                    ),
                                    VerticalDivider(
                                      width: 2,
                                      color: kGreyColor,
                                    ),
                                    itemContainer(
                                      icon: 'assets/icons/salah.png',
                                      value: '03',
                                      title: 'Salah',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/piala.png',
                          width: 95,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBlueSemiLightColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              expandedHeight: 400, // Adjust this height
              leading: const SizedBox(),
              backgroundColor: kBlueSemiLightColor,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.all(0),
                title: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    color: kWhiteColor,
                  ),
                  child: Text(
                    "Peringkat",
                    style: darkBlueTextStyle.copyWith(
                        fontSize: 20, fontWeight: bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                centerTitle: true,
                background: Container(
                  color: kBlueSemiLightColor, // Change to your design
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 38, vertical: 22),
                      child: topBarContainer(),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          color: Colors.white,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: 20, // Adjust as needed
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 8),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kBlueSemiLightColor,
                ),
                child: Row(
                  children: [
                    logic.peringkatWidget(index + 1),
                    const SizedBox(width: 8),
                    Image.asset('assets/avatars/5.png', width: 50),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Text(
                          'Arman Maulana',
                          style: darkBlueTextStyle.copyWith(
                              fontSize: 13, fontWeight: semiBold),
                        ),
                        Text(
                          '@armanmaulana07',
                          style: darkBlueTextStyle.copyWith(
                              fontSize: 10, fontWeight: light),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      '90 poin',
                      style: darkBlueTextStyle.copyWith(
                          fontSize: 13, fontWeight: semiBold),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
