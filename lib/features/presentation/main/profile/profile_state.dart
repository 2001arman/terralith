import 'package:get/get.dart';

class ProfileState {
  List<String> availableAvatar = [
    'assets/avatars/1.png',
    'assets/avatars/2.png',
    'assets/avatars/3.png',
    'assets/avatars/4.png',
    'assets/avatars/5.png',
    'assets/avatars/6.png',
    'assets/avatars/7.png',
    'assets/avatars/8.png',
    'assets/avatars/9.png',
  ];

  var selectedAvatarIndex = 0.obs;
  var activeAvatar = 'assets/avatars/1.png'.obs;
}
