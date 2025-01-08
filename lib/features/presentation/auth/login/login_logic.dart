import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:terralith/features/application/auth_app_service.dart';
import 'package:terralith/features/presentation/auth/username/username_ui.dart';

class LoginLogic extends GetxController {
  final _appService = Get.find<AuthAppService>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {
    EasyLoading.show();
    final data = await _appService.login(
        email: emailController.text, password: passwordController.text);
    EasyLoading.dismiss();
    data.fold(
      (l) => EasyLoading.showError(l.message ?? ''),
      (r) => Get.offAndToNamed(UsernameUi.namePath),
    );
  }
}
