import 'package:get/get.dart';
import 'package:terralith/features/presentation/auth/login/login_binding.dart';
import 'package:terralith/features/presentation/auth/login/login_ui.dart';
import 'package:terralith/features/presentation/auth/username/username_binding.dart';
import 'package:terralith/features/presentation/auth/username/username_ui.dart';

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
  ];
}
