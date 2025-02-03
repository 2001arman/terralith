import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/quiz/model/quiz_result_model.dart';

class QuizRemoteDataSource {
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  Future<Either<FirebaseException, List<QuizResultModel>>> getQuizResult() async {
    try {
      final userDoc = await db
          .collection('users')
          .where('userId', isEqualTo: auth.currentUser!.uid)
          .get();

      if (userDoc.docs.isEmpty) {
        return Left(
          FirebaseException(
            message: 'Data is Empty',
            code: '',
            plugin: '',
          ),
        );
      }

      // Get the first user document ID
      String userId = userDoc.docs.first.id;

      // Access the 'quiz_result' subcollection of this user
      final quizResults = await db
          .collection('users')
          .doc(userId)
          .collection('quiz_result')
          .get();

      List<QuizResultModel> results = [];
      for (var doc in quizResults.docs) {
        results.add(QuizResultModel.fromJson(doc.data()));
      }

      return Right(results);
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }
}
