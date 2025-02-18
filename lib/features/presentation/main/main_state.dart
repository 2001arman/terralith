// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:get/get.dart';

import 'package:terralith/features/domain/materi/model/materi_model.dart';
import 'package:terralith/features/presentation/main/evaluasi_akhir/evaluasi_akhir_ui.dart';
import 'package:terralith/features/presentation/main/kompetensi/kompetensi_ui.dart';
import 'package:terralith/features/presentation/main/main_logic.dart';
import 'package:terralith/features/presentation/main/materi/materi_ui.dart';
import 'package:terralith/features/presentation/main/pengembang/pengembang_ui.dart';
import 'package:terralith/features/presentation/main/profile/profile_ui.dart';
import 'package:terralith/features/presentation/main/video/video_ui.dart';

class MainState {
  final MainLogic logic;

  Rx<SubMateriModel> activeProgress = SubMateriModel(
    title: 'Pengertian Litosfer',
    asset: '',
    progress: 0.0.obs,
  ).obs;

  late final List<HomeItemModel> homeItems;

  MainState(this.logic) {
    homeItems = [
      HomeItemModel(
        name: 'CP dan ATP',
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
        path: EvaluasiAkhirUi.namePath,
        onTap: logic.gotoEvaluasi, // Now logic can be accessed here
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
}

class HomeItemModel {
  final String name;
  final String icon;
  final String path;
  final VoidCallback? onTap;

  HomeItemModel({
    required this.name,
    required this.icon,
    required this.path,
    this.onTap,
  });
}
