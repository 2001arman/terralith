import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/materi/interface/materi_repository_base.dart';
import 'package:terralith/features/infrastructure/materi/materi_remote_data_source.dart';

class MateriAppService {
  final MateriRepositoryBase _repository = MateriRemoteDataSource();

  Future<Either<FirebaseException, bool>> updateMateriProgress({
    required String materi,
    required String subMateri,
    required double progress,
  }) =>
      _repository.updateMateriProgress(
        materi: materi,
        progress: progress,
        subMateri: subMateri,
      );
}
