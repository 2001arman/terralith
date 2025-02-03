class QuizResultModel {
  final String title;
  final int benar;
  final int salah;
  final int point;

  QuizResultModel({
    required this.title,
    required this.benar,
    required this.salah,
    required this.point,
  });

  factory QuizResultModel.fromJson(Map<String, dynamic> json) {
    return QuizResultModel(
      title: json['title'] as String,
      benar: json['benar'] as int,
      salah: json['salah'] as int,
      point: json['point'] as int,
    );
  }
}
