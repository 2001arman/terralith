import 'package:get/get.dart';
import 'package:terralith/features/presentation/auth/login/login_binding.dart';
import 'package:terralith/features/presentation/auth/login/login_ui.dart';
import 'package:terralith/features/presentation/auth/username/username_binding.dart';
import 'package:terralith/features/presentation/auth/username/username_ui.dart';
import 'package:terralith/features/presentation/main/main_binding.dart';
import 'package:terralith/features/presentation/main/main_ui.dart';
import 'package:terralith/features/presentation/main/profile/profile_binding.dart';
import 'package:terralith/features/presentation/main/profile/profile_ui.dart';
import 'package:terralith/features/presentation/main/profile/statistic/statistic_binding.dart';
import 'package:terralith/features/presentation/main/profile/statistic/statistic_ui.dart';

class AppRoute {
  static const String initialRoute = LoginUi.namePath;
  static final routes = [
    GetPage(
      name: UsernameUi.namePath,
      page: () => const UsernameUi(),
      binding: UsernameBinding(),
    ),
    GetPage(
      name: LoginUi.namePath,
      page: () => LoginUi(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: MainUi.namePath,
      page: () => MainUi(),
      binding: MainBinding(),
    ),
    GetPage(
      name: ProfileUi.namePath,
      page: () => ProfileUi(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: StatisticUi.namePath,
      page: () => StatisticUi(),
      binding: StatisticBinding(),
    ),
  ];
}
