class MainState {
  List<HomeItemModel> homeItems = [
    HomeItemModel(name: 'Kompetensi', icon: 'assets/icons/kompetensi.png'),
    HomeItemModel(name: 'Materi', icon: 'assets/icons/materi.png'),
    HomeItemModel(name: 'Video', icon: 'assets/icons/video.png'),
    HomeItemModel(
        name: 'Evaluasi Akhir', icon: 'assets/icons/evaluasi-akhir.png'),
    HomeItemModel(name: 'Profil', icon: 'assets/icons/profile.png'),
    HomeItemModel(name: 'Pengembang', icon: 'assets/icons/pengembang.png'),
  ];
}

class HomeItemModel {
  final String name;
  final String icon;

  HomeItemModel({
    required this.name,
    required this.icon,
  });
}
