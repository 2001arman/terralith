class VideoState {
  final List<YoutubeItemModel> listYoutube = [
    YoutubeItemModel(
      id: 'i-HYjOiHY04',
      title:
          'Luaran Praktik Kependidikan Universitas Negeri Yogyakarta Karya Tata Azkia Azzahra',
      dateTime: 'Senin, 21 Oktober 2024 | 23:13',
    ),
    YoutubeItemModel(
      id: 'Gn7jezGRl1I',
      title: 'Merajut Kolaborasi untuk Pendidikan Negeri Kampus Mengajar 7',
      dateTime: 'Senin, 21 Oktober 2024 | 23:13',
    ),
    YoutubeItemModel(
      id: 'jcikn3QJtOw',
      title: "Pengabdian Kepada Masyarakat SMK Darul 'Ulum Muhammadiyah",
      dateTime: 'Senin, 21 Oktober 2024 | 23:13',
    ),
  ];
}

class YoutubeItemModel {
  final String id;
  final String title;
  final String dateTime;
  

  YoutubeItemModel({
    required this.id,
    required this.title,
    required this.dateTime,
  });
}
