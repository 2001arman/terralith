import 'package:flutter/material.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';
import 'package:terralith/utility/shared/widgets/custom_text_form_field.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kMainColor,
                    ),
                    child: Center(
                      child: Text(
                        'Lanjutkan',
                        style: whiteTextStyle,
                      ),
                    ),
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
