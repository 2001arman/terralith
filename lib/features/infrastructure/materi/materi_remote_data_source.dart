import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:terralith/features/domain/materi/model/materi_model.dart';
import '../../domain/materi/interface/materi_repository_base.dart';

class MateriRemoteDataSource implements MateriRepositoryBase {
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  @override
  Future<Either<FirebaseException, bool>> updateMateriProgress({
    required String materi,
    required String subMateri,
    required double progress,
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
          .collection('materi_progress')
          .where('sub_materi', isEqualTo: subMateri)
          .get();

      if (materiProgressQuery.docs.isNotEmpty) {
        // Document exists, get its ID and current progress
        String docId = materiProgressQuery.docs.first.id;
        double existingProgress =
            materiProgressQuery.docs.first.get('progress');

        // If existing progress is greater than the new progress, do not update
        if (existingProgress > progress) {
          return const Right(true);
        }

        await db
            .collection('users')
            .doc(userId)
            .collection('materi_progress')
            .doc(docId)
            .update({
          'progress': progress,
          'updated_at': DateTime.now(),
        });

        return const Right(true);
      } else {
        // Document does not exist, create a new one
        await db
            .collection('users')
            .doc(userId)
            .collection('materi_progress')
            .add({
          'materi': materi,
          'sub_materi': subMateri,
          'progress': progress,
          'updated_at': DateTime.now(),
        });
      }

      return const Right(true);
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<FirebaseException, List<SubMateriModel>>> getSubMateriProgress(
      {required String materi}) async {
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

      // Fetch all sub_materi data
      final materiProgressQuery = await db
          .collection('users')
          .doc(userId)
          .collection('materi_progress')
          .where('materi', isEqualTo: materi)
          .get();

      if (materiProgressQuery.docs.isEmpty) {
        return const Right([]);
      }

      // Convert Firestore documents to SubMateriModel list
      List<SubMateriModel> subMateriList = materiProgressQuery.docs.map((doc) {
        return SubMateriModel.fromJson(doc.data());
      }).toList();

      return Right(subMateriList);
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<FirebaseException, SubMateriModel>> getLatestProgress() async {
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

      // Fetch the latest sub_materi progress
      final materiProgressQuery = await db
          .collection('users')
          .doc(userId)
          .collection('materi_progress')
          .orderBy('updated_at', descending: true)
          .limit(1)
          .get();

      if (materiProgressQuery.docs.isEmpty) {
        return Right(
          SubMateriModel(
            asset: '',
            progress: 0.0.obs,
            title: 'Pengertian Litosfer',
          ),
        );
      }

      // Get the first document
      final doc = materiProgressQuery.docs.first;

      return Right(
        SubMateriModel.fromJson(doc.data()),
      ); // Return only the latest progress
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<FirebaseException, int>> getMateriDone() async {
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

      // Fetch the latest sub_materi progress
      final materiProgressQuery = await db
          .collection('users')
          .doc(userId)
          .collection('materi_progress')
          .where('progress', isEqualTo: 100)
          .count()
          .get();

      return Right(
          materiProgressQuery.count ?? 0); // Return only the latest progress
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }
}
