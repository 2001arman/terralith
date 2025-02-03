import 'package:terralith/features/presentation/main/materi/quiz/quiz_state.dart';

abstract class QuizRepositoryBase {
  List<QuizModel> getQuizData({required String materi});
}
