import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:terralith/features/application/materi_app_service.dart';
import 'package:terralith/features/domain/materi/model/materi_model.dart';
import 'package:terralith/features/presentation/main/materi/sub_materi/sub_materi_state.dart';

import '../../main_logic.dart';
import 'detail_materi/detail_materi_ui.dart';

class SubMateriLogic extends GetxController {
  final SubMateriState state = SubMateriState();
  final _appService = Get.find<MateriAppService>();
  final _mainLogic = Get.find<MainLogic>();

  late MateriModel materi;

  @override
  void onInit() {
    materi = Get.arguments[0];
    getMateriProgress();
    super.onInit();
  }

  void getMateriProgress() async {
    EasyLoading.show();
    final data = await _appService.getSubMateriProgress(materi: materi.title);
    EasyLoading.dismiss();
    data.fold(
      (l) => EasyLoading.showError(l.message!),
      (subMateriProgress) {
        for (var data in subMateriProgress) {
          final progressData = materi.subMateri.firstWhereOrNull(
            (progress) => progress.title == data.title,
          );
          if (progressData != null) {
            progressData.progress.value = data.progress.value;
          }
        }
        refresh();
      },
    );
  }

  void gotoDetailMateri({required SubMateriModel subMateri}) async {
    Get.to(
      () => DetailMateriUi(
        materi: materi.title,
        title: subMateri.title,
        asset: subMateri.asset,
      ),
    );
  }

  void updateProgress({required String title, required double progress}) {
    final progressData = materi.subMateri.firstWhereOrNull(
      (progress) => progress.title == title,
    );

    if (progressData != null) {
      if (progress > progressData.progress.value) {
        progressData.progress.value = progress;
        refresh();
        _mainLogic.updateLastProgress(
          data: SubMateriModel(title: title, asset: '', progress: progress.obs),
        );
      }
    }
  }
}
