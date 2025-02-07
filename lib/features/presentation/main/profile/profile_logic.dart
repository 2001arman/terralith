import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/profile/profile_state.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';
import 'package:terralith/utility/shared/widgets/container_text_form_field.dart';
import 'package:terralith/utility/utils/global_variable.dart';

import '../../../../utility/shared/widgets/custom_main_button.dart';
import '../../../application/auth_app_service.dart';
import '../../auth/login/login_ui.dart';

class ProfileLogic extends GetxController {
  final _appService = Get.find<AuthAppService>();
  final GlobalVariable globalVariable = Get.find<GlobalVariable>();
  final firebase = FirebaseAuth.instance;
  ProfileState state = ProfileState();

  @override
  void onInit() {
    String avatar = globalVariable.userData.value?.avatar ?? '1.png';
    state.activeAvatar.value = avatar;
    super.onInit();
  }

  void logout() {
    firebase.signOut();
    Get.offAllNamed(LoginUi.namePath);
  }

  void updateName({required String name}) async {
    EasyLoading.show();
    final data = await _appService.updateUserName(name: name);
    EasyLoading.dismiss();
    data.fold(
      (l) => EasyLoading.showError(l.message!),
      (r) {
        globalVariable.userData.value!.name = name;
        globalVariable.userData.update((data) => data!.name = name);
        Get.back();
      },
    );
  }

  void changeAvatar({required int selectedIndex}) async {
    String avatar = state.availableAvatar[selectedIndex];
    EasyLoading.show();
    final data = await _appService.updateUserAvatar(avatar: avatar);
    EasyLoading.dismiss();
    data.fold(
      (l) => EasyLoading.showError(l.message!),
      (r) {
        Get.back();
        state.activeAvatar.value =
            state.availableAvatar[state.selectedAvatarIndex.value];
        globalVariable.userData.value!.avatar = state.activeAvatar.value;
        globalVariable.userData.refresh();
      },
    );
  }

  void ubahProfileDialog() {
    TextEditingController nameController =
        TextEditingController(text: globalVariable.userData.value?.name);
    Get.bottomSheet(
      Container(
        width: double.infinity,
        height: 500,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: kBlueSemiLightColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(35),
            topLeft: Radius.circular(35),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContainerTextFormField(
              title: 'Nama',
              controller: nameController,
            ),
            const SizedBox(height: 12),
            ContainerTextFormField(
              title: 'Alamat Email',
              controller: TextEditingController(
                  text: firebase.currentUser?.email ?? ''),
              isReadOnly: true,
              showEditIcon: false,
            ),
            const SizedBox(height: 40),
            CustomMainButton(
              title: 'Simpan',
              fontWeight: bold,
              fontSize: 16,
              onTap: () => updateName(name: nameController.text),
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  void showChangeAvatar() {
    state.selectedAvatarIndex.value = state.availableAvatar
        .indexWhere((data) => data == state.activeAvatar.value);
    Get.bottomSheet(
      Container(
        width: double.infinity,
        height: 500,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        decoration: BoxDecoration(
          color: kBlueSemiLightColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(35),
            topLeft: Radius.circular(35),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: state.availableAvatar.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => Obx(
                  () => GestureDetector(
                    onTap: () => state.selectedAvatarIndex.value = index,
                    child: Container(
                      decoration: state.selectedAvatarIndex.value == index
                          ? BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 3, color: kMainColor),
                            )
                          : null,
                      child: Image.asset(
                        'assets/avatars/${state.availableAvatar[index]}',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  changeAvatar(selectedIndex: state.selectedAvatarIndex.value),
              child: Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [defaultBoxShadow],
                  color: kMainColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: kWhiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
