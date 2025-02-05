class QuizResultModel {
  final String title;
  final int benar;
  final int salah;
  final int point;
  final int quizNumber;

  QuizResultModel({
    required this.title,
    required this.benar,
    required this.salah,
    required this.point,
    required this.quizNumber,
  });

  factory QuizResultModel.fromJson(Map<String, dynamic> json) {
    return QuizResultModel(
      title: json['title'] as String,
      benar: json['benar'] as int,
      salah: json['salah'] as int,
      point: json['point'] as int,
      quizNumber: json['quiz_number'] as int,
    );
  }
}
