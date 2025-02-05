import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/quiz_model.dart';
import '../model/quiz_result_model.dart';

abstract class QuizRepositoryBase {
  List<QuizModel> getQuizData({required String materi});

  Future<Either<FirebaseException, List<QuizResultModel>>> getQuizResult();
}
