import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/main_ui.dart';

import '../../../application/auth_app_service.dart';

class UsernameLogic extends GetxController {
  final _appService = Get.find<AuthAppService>();
  TextEditingController usernameController = TextEditingController();

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    EasyLoading.show();
    final data = await _appService.getUserData();
    EasyLoading.dismiss();
    data.fold(
      (l) => EasyLoading.showError(l.message!),
      (r) => usernameController.text = r.name,
    );
  }

  void updateName() async {
    EasyLoading.show();
    final data =
        await _appService.updateUserName(name: usernameController.text);
    EasyLoading.dismiss();
    data.fold(
      (l) => EasyLoading.showError(l.message!),
      (r) => Get.offAndToNamed(MainUi.namePath),
    );
  }
}
