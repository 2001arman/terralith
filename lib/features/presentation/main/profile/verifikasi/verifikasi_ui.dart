import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:terralith/features/presentation/main/profile/change-password/change_password_ui.dart';
import 'package:terralith/features/presentation/main/profile/verifikasi/verifikasi_logic.dart';

import '../../../../../utility/shared/constants/constants_ui.dart';

class VerifikasiUi extends StatelessWidget {
  static const String namePath = '/verifikasi_page';
  final logic = Get.find<VerifikasiLogic>();
  VerifikasiUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlueColor),
        backgroundColor: kBlueSemiLightColor,
        shadowColor: kBlackColor.withOpacity(0.25),
        title: Text(
          'Verifikasi',
          style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Image.asset(
              'assets/icons/email.png',
              width: 60,
            ),
            const SizedBox(height: 11),
            Text(
              'Kode verifikasi',
              style:
                  blueTextStyle.copyWith(fontSize: 24, fontWeight: extraBold),
            ),
            const SizedBox(height: 7),
            Text(
              'Silakan masukkan kode verifikasi yang sudah dikirim ke alamat email-mu',
              textAlign: TextAlign.center,
              style: blueTextStyle,
            ),
            const SizedBox(height: 47),
            Pinput(
              onCompleted: (d) => Get.toNamed(ChangePasswordUi.namePath),
              keyboardType: TextInputType.number,
              defaultPinTheme: PinTheme(
                width: 60,
                height: 60,
                textStyle: const TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(30, 60, 87, 1),
                    fontWeight: FontWeight.w600),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kBlueSemiLightColor,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              'Tidak menerima kode?',
              style: blueTextStyle.copyWith(fontWeight: semiBold),
            ),
            Text(
              'Kirim ulang',
              style: blueTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
