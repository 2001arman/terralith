import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/auth/username/username_logic.dart';
import 'package:terralith/utility/shared/widgets/custom_main_button.dart';

import '../../../../utility/shared/constants/constants_ui.dart';
import '../../../../utility/shared/widgets/custom_text_form_field.dart';

class UsernameUi extends StatelessWidget {
  static const String namePath = '/username_page';
  final logic = Get.find<UsernameLogic>();
  UsernameUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background_with_logo.png'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(40),
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF769FCD),
                  Color(0xFFB9D7EA),
                ],
              ),
            ),
            child: Form(
              key: logic.formKeyName,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Masukkan Nama Kamu',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 15,
                    ),
                  ),
                  CustomTextFormField(
                    controller: logic.usernameController,
                    textAlign: TextAlign.center,
                    validator: (data) {
                      if (data == null || data.isEmpty || data == '') {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  CustomMainButton(
                    title: 'Lanjutkan',
                    onTap: logic.updateName,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
