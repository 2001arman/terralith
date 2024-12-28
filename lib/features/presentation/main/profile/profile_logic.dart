import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/profile/profile_state.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

class ProfileLogic extends GetxController {
  ProfileState state = ProfileState();

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
