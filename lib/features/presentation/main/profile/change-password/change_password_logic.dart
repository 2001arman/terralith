import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../application/auth_app_service.dart';

class ChangePasswordLogic extends GetxController {
  final appService = Get.find<AuthAppService>();

  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void updatePassword() async {
    bool validate = formKey.currentState!.validate();
    if (!validate) return;

    final res =
        await appService.updatePassword(newPassword: passwordController.text);
    res.fold(
      (error) => EasyLoading.showError(
        error.message ?? '',
        duration: const Duration(seconds: 3),
      ),
      (r) {
        EasyLoading.showSuccess('Berhasil mengubah password.');
        Get.back();
      },
    );
  }
}
