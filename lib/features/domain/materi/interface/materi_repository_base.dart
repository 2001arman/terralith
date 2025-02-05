import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/materi/model/materi_model.dart';

abstract class MateriRepositoryBase {
  Future<Either<FirebaseException, bool>> updateMateriProgress({
    required String materi,
    required String subMateri,
    required double progress,
  });

  Future<Either<FirebaseException, List<SubMateriModel>>> getSubMateriProgress({
    required String materi,
  });

  Future<Either<FirebaseException, SubMateriModel>> getLatestProgress();
}
