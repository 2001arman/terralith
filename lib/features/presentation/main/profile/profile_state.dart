import 'package:get/get.dart';

class ProfileState {
  List<String> availableAvatar = [
    '1.png',
    '2.png',
    '3.png',
    '4.png',
    '5.png',
    '6.png',
    '7.png',
    '8.png',
    '9.png',
  ];

  var selectedAvatarIndex = 0.obs;
  var activeAvatar = '1.png'.obs;
}
