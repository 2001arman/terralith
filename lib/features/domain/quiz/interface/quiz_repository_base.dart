import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/quiz/model/evaluasi_model.dart';

import '../model/quiz_model.dart';
import '../model/quiz_result_model.dart';

abstract class QuizRepositoryBase {
  List<QuizModel> getQuizData({required String materi});

  Future<Either<FirebaseException, List<QuizResultModel>>> getQuizResult();

  Future<Either<FirebaseException, bool>> createQuizResult(
      {required QuizResultModel quizResult});

  Future<Either<FirebaseException, bool>> createEvaluasiAkhir({
    required EvaluasiModel evaluasi,
  });

  Future<Either<FirebaseException, EvaluasiModel?>> getEvaluasiResult();

  Future<Either<FirebaseException, int>> getEvaluasiRank();
}
