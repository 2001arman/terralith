import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_state.dart';

import '../model/quiz_result_model.dart';

abstract class QuizRepositoryBase {
  List<QuizModel> getQuizData({required String materi});

  Future<Either<FirebaseException, List<QuizResultModel>>> getQuizResult();
}
