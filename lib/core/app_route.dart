import 'package:get/get.dart';
import 'package:terralith/features/presentation/auth/username/username_binding.dart';
import 'package:terralith/features/presentation/auth/username/username_ui.dart';

class AppRoute {
  static const String initialRoute = UsernameUi.namePath;
  static final routes = [
    GetPage(
      name: UsernameUi.namePath,
      page: () => const UsernameUi(),
      binding: UsernameBinding(),
    ),
  ];
}
