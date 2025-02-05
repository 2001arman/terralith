import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/profile/change-password/change_password_ui.dart';
import 'package:terralith/features/presentation/main/profile/profile_logic.dart';
import 'package:terralith/features/presentation/main/profile/statistic/statistic_ui.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

class ProfileUi extends StatelessWidget {
  static const String namePath = '/profile_page';
  final logic = Get.find<ProfileLogic>();
  final state = Get.find<ProfileLogic>().state;
  ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget itemWidget({
      required String value,
      required String name,
    }) {
      return Column(
        children: [
          Text(
            value,
            style: blackTextStyle.copyWith(fontSize: 26, fontWeight: semiBold),
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: light),
          ),
        ],
      );
    }

    Widget containerMenuItem({
      required String icon,
      required String title,
      required VoidCallback onTap,
    }) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 75,
          padding: const EdgeInsets.all(14),
          margin: const EdgeInsets.only(bottom: 17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kBlueSemiLightColor.withValues(alpha: 0.5),
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                margin: const EdgeInsets.only(right: 11),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kBlueSemiLightColor,
                ),
                child: Image.asset(
                  icon,
                  width: 28,
                  height: 28,
                ),
              ),
              Expanded(
                child: Text(
                  title,
                  style: blueTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: kBlueColor,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlueColor),
        backgroundColor: kBlueSemiLightColor,
        shadowColor: kBlackColor.withValues(alpha: 0.25),
        title: Text(
          'Profil Saya',
          style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                onTap: logic.showChangeAvatar,
                child: SizedBox(
                  width: 130,
                  height: 130,
                  child: Stack(
                    children: [
                      Obx(
                        () => Image.asset(
                          'assets/avatars/${state.activeAvatar.value}',
                          width: 130,
                          height: 130,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icons/change-avatar.png',
                            width: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                logic.globalVariable.userData.value?.name ?? '',
                style:
                    blueTextStyle.copyWith(fontSize: 24, fontWeight: extraBold),
              ),
              Text(
                logic.firebase.currentUser?.email ?? '',
                style: blueTextStyle.copyWith(fontSize: 16, fontWeight: light),
              ),
              const SizedBox(height: 23),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  itemWidget(value: '7/11', name: 'Materi'),
                  Container(
                    height: 37,
                    width: 1,
                    color: kBlackColor,
                  ),
                  itemWidget(value: '230', name: 'Poin'),
                  Container(
                    height: 37,
                    width: 1,
                    color: kBlackColor,
                  ),
                  itemWidget(value: '3/4', name: 'Kuis'),
                ],
              ),
              const SizedBox(height: 34),
              containerMenuItem(
                icon: 'assets/icons/user.png',
                title: 'Ubah Profil',
                onTap: logic.ubahProfileDialog,
              ),
              containerMenuItem(
                icon: 'assets/icons/lock.png',
                title: 'Ubah Kata Sandi',
                onTap: () => Get.toNamed(ChangePasswordUi.namePath),
              ),
              containerMenuItem(
                icon: 'assets/icons/statistik.png',
                title: 'Statistik',
                onTap: () => Get.toNamed(StatisticUi.namePath),
              ),
              containerMenuItem(
                icon: 'assets/icons/logout.png',
                title: 'Keluar',
                onTap: logic.logout,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
