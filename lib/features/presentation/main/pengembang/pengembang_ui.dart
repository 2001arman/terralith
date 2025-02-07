import 'package:flutter/material.dart';

import '../../../../utility/shared/constants/constants_ui.dart';

class PengembangUi extends StatelessWidget {
  static const String namePath = '/pengembang-page';
  const PengembangUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget rowText({required String title, required String description}) {
      return Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: blueTextStyle.copyWith(fontWeight: bold),
            ),
          ),
          Expanded(
            flex: 10,
            child: Text(
              ': $description',
              style: blueTextStyle.copyWith(fontWeight: medium),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlueColor),
        backgroundColor: kBlueSemiLightColor,
        shadowColor: kBlackColor.withValues(alpha: 0.25),
        title: Text(
          'Pengembang',
          style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            // Image.asset(
            //   'assets/images/kita.png',
            // ),
            const SizedBox(height: 40),
            rowText(title: 'Nama', description: 'Tata Azkia Azzahra'),
            rowText(title: 'NIM', description: '21405241015'),
            rowText(title: 'Prodi', description: 'Pendidikan Geografi'),
            rowText(
                title: 'Email',
                description: 'tataazkia.2021@student.uny.ac.id'),
            const SizedBox(height: 26),
            Text(
              'Dosen Pembimbing',
              style: blueTextStyle.copyWith(fontWeight: bold),
            ),
            const SizedBox(height: 2),
            Text(
              'Prof. Dr. Muhammad Nursa’ban, S.Pd., M.Pd.',
              style: blueTextStyle.copyWith(fontWeight: medium),
            ),
            const SizedBox(height: 12),
            Text(
              'Judul Penelitian',
              style: blueTextStyle.copyWith(fontWeight: bold),
            ),
            const SizedBox(height: 2),
            Text(
              'Pengembangan Aplikasi Terralith sebagai Sumber Belajar Mandiri Mata Pelajaran Geografi SMA untuk Meningkatkan Kesadaran terhadap Risiko Bencana',
              style: blueTextStyle.copyWith(fontWeight: medium),
            ),
          ],
        ),
      ),
    );
  }
}
