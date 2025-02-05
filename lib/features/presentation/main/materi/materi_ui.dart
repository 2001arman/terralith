import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/materi/materi_logic.dart';
import 'package:terralith/features/presentation/main/materi/sub_materi/sub_materi_ui.dart';

import '../../../../utility/shared/constants/constants_ui.dart';

class MateriUi extends StatelessWidget {
  static const String namePath = '/materi_page';
  final logic = Get.find<MateriLogic>();
  final state = Get.find<MateriLogic>().state;
  MateriUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlueColor),
        backgroundColor: kBlueSemiLightColor,
        shadowColor: kBlackColor.withValues(alpha: 0.25),
        title: Text(
          'Materi',
          style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 25),
        itemCount: state.listMateri.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 20,
          childAspectRatio: 145 / 166,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Get.toNamed(
              SubMateriUi.namePath,
              arguments: [state.listMateri[index]],
            ),
            child: Container(
              height: 180,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFfF7FBFC),
                boxShadow: [
                  defaultBoxShadow,
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      height: 107,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kBlueSemiLightColor,
                      ),
                      child: Image.asset(state.listMateri[index].image),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Expanded(
                    child: Text(
                      state.listMateri[index].title,
                      style: blueTextStyle.copyWith(fontWeight: semiBold),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
