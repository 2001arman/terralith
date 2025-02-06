import 'package:get/get.dart';
import 'package:terralith/features/domain/quiz/model/evaluasi_model.dart';
import 'package:terralith/features/domain/quiz/model/quiz_result_model.dart';

class StatisticState {
  RxInt materiDone = 0.obs;

  Rxn<EvaluasiModel> evaluasi = Rxn();

  RxInt rank = (-1).obs;

  RxList<QuizResultModel> quizResult = <QuizResultModel>[
    QuizResultModel.empty(1),
    QuizResultModel.empty(2),
    QuizResultModel.empty(3),
    QuizResultModel.empty(4),
  ].obs;
}
