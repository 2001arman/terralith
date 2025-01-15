import 'package:get/get.dart';
import 'package:terralith/features/application/auth_app_service.dart';

class VerifikasiLogic extends GetxController {
  final appService = Get.find<AuthAppService>();

  @override
  void onInit() async {
    final data = await appService.sendOTP();
    data.fold((e) => Get.log('Error nih bos'), (r) => Get.log('ga error nih'));
    super.onInit();
  }
}
