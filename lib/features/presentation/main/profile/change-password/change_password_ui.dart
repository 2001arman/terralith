import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/profile/change-password/change_password_logic.dart';
import 'package:terralith/utility/shared/widgets/custom_main_button.dart';

import '../../../../../utility/shared/constants/constants_ui.dart';
import '../../../../../utility/shared/widgets/container_text_form_field.dart';

class ChangePasswordUi extends StatelessWidget {
  static const String namePath = '/change_password_page';
  final logic = Get.find<ChangePasswordLogic>();
  ChangePasswordUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlueColor),
        backgroundColor: kBlueSemiLightColor,
        shadowColor: kBlackColor.withOpacity(0.25),
        title: Text(
          'Ubah Kata Sandi',
          style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 48),
        child: Column(
          children: [
            ContainerTextFormField(
              title: 'Masukkan Kata Sandi Baru',
              controller: TextEditingController(text: 'Arman Maulana'),
              showEditIcon: false,
              color: kBlueSemiLightColor,
              isPassword: true,
            ),
            const SizedBox(height: 20),
            ContainerTextFormField(
              title: 'Konfirmasi Kata Sandi',
              controller: TextEditingController(text: 'Arman Maulana'),
              showEditIcon: false,
              color: kBlueSemiLightColor,
              isPassword: true,
            ),
            const SizedBox(height: 40),
            CustomMainButton(
              title: 'Simpan',
              onTap: () {},
              color: kBlueColor,
            ),
          ],
        ),
      ),
    );
  }
}
