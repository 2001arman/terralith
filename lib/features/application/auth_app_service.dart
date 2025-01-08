import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/auth/interface/auth_repository_base.dart';
import 'package:terralith/features/infrastructure/auth/auth_data_source.dart';

class AuthAppService {
  final AuthRepositoryBase _repository = AuthDataSource();

  Future<Either<FirebaseAuthException, UserCredential>> login({
    required String email,
    required String password,
  }) =>
      _repository.login(email: email, password: password);
}
