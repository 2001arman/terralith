import 'package:get/get.dart';
import 'package:terralith/features/domain/materi/model/materi_model.dart';
import 'package:terralith/features/presentation/main/kompetensi/kompetensi_ui.dart';
import 'package:terralith/features/presentation/main/materi/materi_ui.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_ui.dart';
import 'package:terralith/features/presentation/main/pengembang/pengembang_ui.dart';
import 'package:terralith/features/presentation/main/profile/profile_ui.dart';
import 'package:terralith/features/presentation/main/video/video_ui.dart';

class MainState {
  Rx<SubMateriModel> activeProgress = SubMateriModel(
    title: 'Pengertian Litosfer',
    asset: '',
    progress: 0.0.obs,
  ).obs;

  List<HomeItemModel> homeItems = [
    HomeItemModel(
      name: 'Kompetensi',
      icon: 'assets/icons/kompetensi.png',
      path: KompetensiUi.namePath,
    ),
    HomeItemModel(
      name: 'Materi',
      icon: 'assets/icons/materi.png',
      path: MateriUi.namePath,
    ),
    HomeItemModel(
      name: 'Video',
      icon: 'assets/icons/video.png',
      path: VideoUi.namePath,
    ),
    HomeItemModel(
      name: 'Evaluasi Akhir',
      icon: 'assets/icons/evaluasi-akhir.png',
      path: QuizUi.namePath,
    ),
    HomeItemModel(
      name: 'Profil',
      icon: 'assets/icons/profile.png',
      path: ProfileUi.namePath,
    ),
    HomeItemModel(
      name: 'Pengembang',
      icon: 'assets/icons/pengembang.png',
      path: PengembangUi.namePath,
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
