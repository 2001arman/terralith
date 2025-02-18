import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/quiz/interface/quiz_repository_base.dart';
import 'package:terralith/features/domain/quiz/model/evaluasi_model.dart';
import 'package:terralith/features/domain/quiz/model/quiz_result_model.dart';
import 'package:terralith/features/infrastructure/quiz/quiz_local_data_source.dart';
import 'package:terralith/features/infrastructure/quiz/quiz_remote_data_source.dart';

import '../domain/quiz/model/quiz_model.dart';

class QuizAppService implements QuizRepositoryBase {
  final QuizLocalDataSource _localDataSource = QuizLocalDataSource();
  final QuizRemoteDataSource _remoteDataSource = QuizRemoteDataSource();

  @override
  List<QuizModel> getQuizData({required String materi}) {
    switch (materi) {
      case 'Litosfer':
        return _localDataSource.litosferQuiz;
      case 'Tenaga Endogen':
        return _localDataSource.endogenQuiz;
      case 'Tenaga Eksogen':
        return _localDataSource.eksogenQuiz;
      case 'Risiko Bencana dan Mitigasinya':
        return _localDataSource.bencanaQuiz;
      default:
        return _localDataSource.evaluasiAkhir;
    }
  }

  @override
  Future<Either<FirebaseException, List<QuizResultModel>>> getQuizResults() {
    return _remoteDataSource.getQuizResults();
  }

  @override
  Future<Either<FirebaseException, QuizResultModel?>> getQuizResult(
          {required String title}) =>
      _remoteDataSource.getQuizResult(title: title);

  @override
  Future<Either<FirebaseException, bool>> createQuizResult({
    required QuizResultModel quizResult,
  }) =>
      _remoteDataSource.createQuizResult(quizResult: quizResult);

  @override
  Future<Either<FirebaseException, bool>> createEvaluasiAkhir(
          {required EvaluasiModel evaluasi}) =>
      _remoteDataSource.createEvaluasiAkhir(evaluasi: evaluasi);

  @override
  Future<Either<FirebaseException, EvaluasiModel?>> getEvaluasiResult() =>
      _remoteDataSource.getEvaluasiResult();

  @override
  Future<Either<FirebaseException, int>> getEvaluasiRank() =>
      _remoteDataSource.getEvaluasiRank();
}
