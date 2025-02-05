import 'package:get/get.dart';
import 'package:terralith/features/domain/quiz/model/quiz_result_model.dart';

class StatisticState {
  RxList<QuizResultModel> quizResult = <QuizResultModel>[
    QuizResultModel.empty(1),
    QuizResultModel.empty(2),
    QuizResultModel.empty(3),
    QuizResultModel.empty(4),
  ].obs;
}
