import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:terralith/features/application/materi_app_service.dart';
import 'package:terralith/features/presentation/main/main_state.dart';

import '../../../utility/utils/global_variable.dart';
import '../../application/auth_app_service.dart';
import '../../domain/materi/model/materi_model.dart';

class MainLogic extends GetxController {
  final _appService = Get.find<AuthAppService>();
  final _materiAppService = Get.find<MateriAppService>();
  final globalVariable = Get.find<GlobalVariable>();
  final MainState state = MainState();

  @override
  void onInit() {
    if (globalVariable.userData.value == null) {
      getData();
    }
    getLastProgress();
    super.onInit();
  }

  void getLastProgress() async {
    final data = await _materiAppService.getLatestProgress();
    data.fold(
      (l) {},
      (r) => state.activeProgress.value = r,
    );
  }

  void updateLastProgress({required SubMateriModel data}) {
    state.activeProgress.value = data;
    refresh();
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
