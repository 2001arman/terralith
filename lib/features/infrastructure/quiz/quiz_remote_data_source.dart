import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/quiz/model/evaluasi_model.dart';
import 'package:terralith/features/domain/quiz/model/quiz_result_model.dart';

class QuizRemoteDataSource {
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  Future<Either<FirebaseException, List<QuizResultModel>>>
      getQuizResult() async {
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

  Future<Either<FirebaseException, bool>> createQuizResult({
    required QuizResultModel quizResult,
  }) async {
    try {
      final userDoc = await db
          .collection('users')
          .where('userId', isEqualTo: auth.currentUser!.uid)
          .get();

      if (userDoc.docs.isEmpty) {
        return Left(
          FirebaseException(
            message: 'User not found',
            code: 'user-not-found',
            plugin: 'firebase',
          ),
        );
      }

      // Get the first user document ID
      String userId = userDoc.docs.first.id;

      // Check if a document with the same 'materi' exists
      final materiProgressQuery = await db
          .collection('users')
          .doc(userId)
          .collection('quiz_result')
          .where('title', isEqualTo: quizResult.title)
          .get();

      if (materiProgressQuery.docs.isNotEmpty) {
        String docId = materiProgressQuery.docs.first.id;

        await db
            .collection('users')
            .doc(userId)
            .collection('quiz_result')
            .doc(docId)
            .update({
          'point': quizResult.point,
          'salah': quizResult.salah,
          'benar': quizResult.benar,
          'quiz_number': quizResult.quizNumber,
        });

        return const Right(true);
      } else {
        // Document does not exist, create a new one
        await db.collection('users').doc(userId).collection('quiz_result').add({
          'title': quizResult.title,
          'point': quizResult.point,
          'salah': quizResult.salah,
          'benar': quizResult.benar,
          'quiz_number': quizResult.quizNumber,
        });
      }

      return const Right(true);
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }

  Future<Either<FirebaseException, bool>> createEvaluasiAkhir({
    required EvaluasiModel evaluasi,
  }) async {
    try {
      final userDoc = await db
          .collection('evaluasi_akhir')
          .where('userId', isEqualTo: auth.currentUser!.uid)
          .get();

      if (userDoc.docs.isNotEmpty) {
        String userId = userDoc.docs.first.id;

        await db.collection('evaluasi_akhir').doc(userId).update({
          'nilai': evaluasi.nilai,
          'salah': evaluasi.salah,
          'benar': evaluasi.benar,
          'createdAt': evaluasi.createdAt,
        });

        return const Right(true);
      } else {
        // Document does not exist, create a new one
        await db.collection('evaluasi_akhir').add({
          'nilai': evaluasi.nilai,
          'salah': evaluasi.salah,
          'benar': evaluasi.benar,
          'createdAt': evaluasi.createdAt,
          'userId': auth.currentUser!.uid,
        });
      }

      return const Right(true);
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }
}
