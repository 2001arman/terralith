import 'package:terralith/features/presentation/main/profile/profile_ui.dart';

class MainState {
  List<HomeItemModel> homeItems = [
    HomeItemModel(
      name: 'Kompetensi',
      icon: 'assets/icons/kompetensi.png',
      path: ProfileUi.namePath,
    ),
    HomeItemModel(
      name: 'Materi',
      icon: 'assets/icons/materi.png',
      path: ProfileUi.namePath,
    ),
    HomeItemModel(
      name: 'Video',
      icon: 'assets/icons/video.png',
      path: ProfileUi.namePath,
    ),
    HomeItemModel(
      name: 'Evaluasi Akhir',
      icon: 'assets/icons/evaluasi-akhir.png',
      path: ProfileUi.namePath,
    ),
    HomeItemModel(
      name: 'Profil',
      icon: 'assets/icons/profile.png',
      path: ProfileUi.namePath,
    ),
    HomeItemModel(
      name: 'Pengembang',
      icon: 'assets/icons/pengembang.png',
      path: ProfileUi.namePath,
    ),
  ];
}

class HomeItemModel {
  final String name;
  final String icon;
  final String path;

  HomeItemModel({
    required this.name,
    required this.icon,
    required this.path,
  });
}
