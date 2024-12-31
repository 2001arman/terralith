import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/materi/sub_materi/detail_materi/detail_materi_ui.dart';
import 'package:terralith/features/presentation/main/materi/sub_materi/sub_materi_logic.dart';

import '../../../../../utility/shared/constants/constants_ui.dart';

class SubMateriUi extends StatelessWidget {
  static const String namePath = '/sub_materi_page';
  final logic = Get.find<SubMateriLogic>();
  SubMateriUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget itemContainer() {
      return GestureDetector(
        onTap: () => Get.to(const DetailMateriUi()),
        child: Container(
          width: double.infinity,
          height: 73,
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
          margin: const EdgeInsets.only(bottom: 19),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFF7FBFC),
            boxShadow: [
              defaultBoxShadow,
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kBlueSemiLightColor,
                ),
                child: Center(
                  child: Text(
                    '1',
                    style: blueTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(width: 9),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pengertian Litosfer',
                      style: blueSemiLightTextStyle.copyWith(
                        color: const Color(0xFF6E89A9),
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 90 / 100,
                            backgroundColor: kGreyColor,
                            color: const Color(0xFF6E89A9),
                            minHeight: 7,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '90%',
                          style: blueSemiLightTextStyle.copyWith(
                            color: const Color(0xFF6E89A9),
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
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
          'Litosfer',
          style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 25),
        children: [
          itemContainer(),
          itemContainer(),
          itemContainer(),
          itemContainer(),
        ],
      ),
    );
  }
}
