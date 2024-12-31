import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../../../utility/shared/constants/constants_ui.dart';

class DetailMateriUi extends StatelessWidget {
  const DetailMateriUi({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: HtmlWidget(
          '''
      <img src="https://lh3.googleusercontent.com/d/10dNAby7g6voInsYu19GaNdRYFHIqksLs=w1000?authuser=1/view" alt="" />
      <p>Litosfer ini berasal dari kata litos artinya batu, sfer = sphaira artinya bulatan/lapisan. Litosfer merupakan lapisan batuan/kulit bumi yang mengikuti bentuk bumi yang bulat dengan ketebalan kurang lebih 1.200 km. Jadi litosfer adalah lapisan bumi paling luar yang paling luas dan paling tipis, karena itulah lapisan ini sering dinamakan dengan kerak bumi. Tebal kulit bumi tidak merata, kulit bumi di bagian benua atau daratan lebih tebal dari bagian samudra.</p>
      ''',
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
      ),
    );
  }
}
