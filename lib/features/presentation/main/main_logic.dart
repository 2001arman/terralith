import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/main_state.dart';

import '../../../utility/utils/global_variable.dart';
import '../../application/auth_app_service.dart';

class MainLogic extends GetxController {
  final _appService = Get.find<AuthAppService>();
  final globalVariable = Get.find<GlobalVariable>();
  final MainState state = MainState();

  @override
  void onInit() {
    if (globalVariable.userData.value == null) {
      getData();
    }

    super.onInit();
  }

  void getData() async {
    EasyLoading.show();
    final data = await _appService.getUserData();
    EasyLoading.dismiss();
    data.fold(
      (l) => EasyLoading.showError(l.message!),
      (r) => globalVariable.userData.value = r,
    );
  }
}
