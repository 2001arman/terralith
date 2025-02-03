import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/quiz/interface/quiz_repository_base.dart';
import 'package:terralith/features/domain/quiz/model/quiz_result_model.dart';
import 'package:terralith/features/infrastructure/quiz/quiz_local_data_source.dart';
import 'package:terralith/features/infrastructure/quiz/quiz_remote_data_source.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_state.dart';

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
        return _localDataSource.litosferQuiz;
    }
  }

  @override
  Future<Either<FirebaseException, List<QuizResultModel>>> getQuizResult() {
    return _remoteDataSource.getQuizResult();
  }
}
