import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/auth/login/login_logic.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';
import 'package:terralith/utility/shared/widgets/custom_text_form_field.dart';

import '../../../../utility/shared/widgets/custom_main_button.dart';

class LoginUi extends StatelessWidget {
  static const String namePath = '/login_page';
  final logic = Get.find<LoginLogic>();
  LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Image.asset(
                'assets/logo.png',
                width: 180,
                height: 180,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                decoration: BoxDecoration(
                  gradient: mainGradient,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Selamat Datang!',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: extraBold,
                      ),
                    ),
                    const SizedBox(height: 36),
                    CustomTextFormField(
                      controller: logic.emailController,
                      title: 'Email',
                      backgroundColor: kTextFormColor,
                    ),
                    CustomTextFormField(
                      controller: logic.passwordController,
                      title: 'Kata Sandi',
                      isPassword: true,
                    ),
                    const SizedBox(height: 30),
                    CustomMainButton(
                      title: 'Masuk',
                      fontWeight: bold,
                      fontSize: 16,
                      onTap: logic.login,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
