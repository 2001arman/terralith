import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/kompetensi/kompetensi_logic.dart';

import '../../../../utility/shared/constants/constants_ui.dart';

class KompetensiUi extends StatelessWidget {
  static const String namePath = '/kompetensi_page';
  final logic = Get.find<KompetensiLogic>();
  KompetensiUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlueColor),
        backgroundColor: kBlueSemiLightColor,
        shadowColor: kBlackColor.withValues(alpha: 0.25),
        title: Text(
          'Kompetensi',
          style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          HtmlWidget(
            logic.contentHtml,
            customStylesBuilder: (element) {
              if (element.localName == 'h1') {
                return {
                  'color': '#769FCD',
                  'font-size': '24px',
                };
              }
              if (element.localName == 'li') {
                return {'font-size': '14px'};
              }
              return {
                'text-align': 'justify',
              };
            },
            textStyle: blackTextStyle,
          ),
        ],
      ),
    );
  }
}
