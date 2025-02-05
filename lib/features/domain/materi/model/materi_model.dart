import 'package:get/get.dart';

class MateriModel {
  final String image;
  final String title;
  final List<SubMateriModel> subMateri;

  MateriModel({
    required this.image,
    required this.title,
    required this.subMateri,
  });
}

class SubMateriModel {
  final String title;
  final String asset;
  RxDouble progress;

  SubMateriModel({
    required this.title,
    required this.asset,
    required this.progress,
  });

  factory SubMateriModel.fromJson(Map<String, dynamic> json) {
    double progress = json['progress'];
    return SubMateriModel(
      title: json['sub_materi'] as String,
      asset: '',
      progress: progress.obs,
    );
  }
}
