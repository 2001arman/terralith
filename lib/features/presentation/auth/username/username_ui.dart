import 'package:flutter/material.dart';
import 'package:terralith/utility/shared/widgets/custom_main_button.dart';

import '../../../../utility/shared/constants/constants_ui.dart';
import '../../../../utility/shared/widgets/custom_text_form_field.dart';

class UsernameUi extends StatelessWidget {
  static const String namePath = '/username_page';
  const UsernameUi({super.key});

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
                  controller: TextEditingController(
                    text: 'Arman Maulana',
                  ),
                ),
                CustomMainButton(
                  title: 'Lanjutkan',
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
