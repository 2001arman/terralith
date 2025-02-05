import 'package:get/get.dart';

import '../../../domain/quiz/model/quiz_model.dart';

class EvaluasiAkhirState {
  var activeSoal = 0.obs;
  var poin = 0.obs;
  var remainingTime = 1500.obs; // 5 minutes in seconds
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

  RxList<SelectedJawaban> selectedJawabanAll = List.generate(
    26,
    (index) => SelectedJawaban(index: index, jawaban: ''.obs),
  ).obs;
}

class SelectedJawaban {
  final int index;
  final RxString jawaban;

  SelectedJawaban({required this.index, required this.jawaban});
}
