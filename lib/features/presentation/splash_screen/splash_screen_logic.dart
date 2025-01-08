import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/auth/login/login_ui.dart';
import 'package:terralith/features/presentation/main/main_ui.dart';

class SplashScreenLogic extends GetxController {
  @override
  void onReady() async {
    await Future.delayed(
      const Duration(seconds: 1),
      () => gotoNextPage(),
    );
    super.onReady();
  }

  void gotoNextPage() {
    if (FirebaseAuth.instance.currentUser != null) {
      Get.offAndToNamed(MainUi.namePath);
    } else {
      Get.offAndToNamed(LoginUi.namePath);
    }
    return;
  }
}
