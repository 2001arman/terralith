import 'package:get/get.dart';

import '../../../../domain/quiz/model/quiz_model.dart';

class QuizState {
  var activeSoal = 0.obs;
  var selectedJawaban = Rxn<String>();
  var poin = 0.obs;
  var remainingTime = 600.obs; // 5 minutes in seconds
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
