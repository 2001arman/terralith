import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/profile/profile_state.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

import '../../../../utility/shared/widgets/custom_main_button.dart';
import '../../auth/login/login_ui.dart';

class ProfileLogic extends GetxController {
  ProfileState state = ProfileState();

  void logout() {
    FirebaseAuth.instance.signOut();
    Get.offAllNamed(LoginUi.namePath);
  }

  Widget textFormWidget({
    required String title,
    required String value,
    bool isReadOnly = false,
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blueTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
        Container(
          margin: const EdgeInsets.only(top: 4),
          decoration: BoxDecoration(
            color: kWhiteColor,
            boxShadow: [defaultBoxShadow],
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextFormField(
            controller: TextEditingController(text: value),
            style: mainTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 16,
            ),
            obscureText: isPassword,
            readOnly: isReadOnly,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 12),
              suffixIcon: Icon(
                Icons.edit_outlined,
                color: kBlueColor,
              ),
            ),
          ),
        )
      ],
    );
  }

  void ubahProfileDialog() {
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
            textFormWidget(title: 'Nama', value: 'Arman Maulana'),
            const SizedBox(height: 12),
            textFormWidget(
              title: 'Nama Pengguna',
              value: 'armanmaulana07',
              isReadOnly: true,
            ),
            const SizedBox(height: 12),
            textFormWidget(
              title: 'Kata Sandi',
              value: 'Arman Maulana',
              isPassword: true,
            ),
            const SizedBox(height: 40),
            CustomMainButton(
              title: 'Simpan',
              fontWeight: bold,
              fontSize: 16,
              onTap: Get.back,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  void showChangeAvatar() {
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
                        state.availableAvatar[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.back();
                state.activeAvatar.value =
                    state.availableAvatar[state.selectedAvatarIndex.value];
              },
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
