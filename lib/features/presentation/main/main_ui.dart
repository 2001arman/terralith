import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/main_logic.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

class MainUi extends StatelessWidget {
  static const String namePath = '/main_page';
  final logic = Get.find<MainLogic>();
  final state = Get.find<MainLogic>().state;
  MainUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget topBarSection() => SizedBox(
          width: double.infinity,
          height: 277,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 210,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  gradient: mainGradient,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: MediaQuery.of(context).padding.top),
                        const SizedBox(height: 18),
                        Text(
                          'Selamat Datang, ',
                          style: whiteTextStyle.copyWith(fontSize: 13),
                        ),
                        Text(
                          'Arman Maulana !',
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: extraBold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset('assets/avatars/8.png', width: 46),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 134,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kBlueLightColor,
                    boxShadow: [defaultBoxShadow],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lanjutkan Pelajaranmu',
                        style: whiteTextStyle.copyWith(fontWeight: semiBold),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        height: 72,
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kWhiteColor,
                          boxShadow: [defaultBoxShadow],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Tenaga Geologi',
                                style: darkBoldBlueTextStyle.copyWith(
                                    fontSize: 15, fontWeight: extraBold),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                              height: 72,
                              child: Stack(
                                children: [
                                  Center(
                                    child: CircularProgressIndicator(
                                      value: 78 / 100,
                                      color: kBlueColor,
                                      backgroundColor: kBlueSemiLightColor,
                                      strokeWidth: 8,
                                      strokeCap: StrokeCap.round,
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      '78%',
                                      style: darkBoldBlueTextStyle.copyWith(
                                        fontSize: 10,
                                        fontWeight: black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          topBarSection(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(
              'Topik',
              style:
                  blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 18,
              ),
              itemCount: state.homeItems.length,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => Get.toNamed(state.homeItems[index].path),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffF7FBFC),
                    boxShadow: [
                      defaultBoxShadow,
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        state.homeItems[index].icon,
                        width: 90,
                      ),
                      Text(
                        state.homeItems[index].name,
                        style: darkBlueTextStyle.copyWith(
                            fontSize: 16, fontWeight: extraBold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
