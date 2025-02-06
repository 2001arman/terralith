class EvaluasiModel {
  final String userId;
  final int nilai;
  final int salah;
  final int benar;
  final DateTime createdAt;
  final int tryAccess;

  EvaluasiModel({
    required this.userId,
    required this.nilai,
    required this.salah,
    required this.benar,
    required this.createdAt,
    this.tryAccess = 1,
  });

  factory EvaluasiModel.fromJson(Map<String, dynamic> json) {
    return EvaluasiModel(
      userId: json['userId'] as String,
      benar: json['benar'] as int,
      salah: json['salah'] as int,
      nilai: json['nilai'] as int,
      createdAt: DateTime.now(),
      tryAccess: json['try_access'] ?? 0,
    );
  }
}
