import 'package:get/get.dart';

class QuizState {
  var activeSoal = 0.obs;
  var selectedJawaban = Rxn<String>();
  var poin = 0.obs;
  var remainingTime = 300.obs; // 5 minutes in seconds
  int soalBenar = 0;
  int soalSalah = 0;

  late List<QuizModel> quizList;

  List<String> alphabet = [
    'A',
    'B',
    'C',
    'D',
    'E',
  ];
}

class QuizModel {
  final String soal;
  final List<String> jawaban;
  final String jawabanBenar;

  QuizModel({
    required this.soal,
    required this.jawaban,
    required this.jawabanBenar,
  });
}
