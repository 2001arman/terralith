import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/auth/interface/auth_repository_base.dart';
import 'package:terralith/features/domain/auth/model/user_model.dart';
import 'package:terralith/features/infrastructure/auth/auth_data_source.dart';

class AuthAppService {
  final AuthRepositoryBase _repository = AuthDataSource();

  Future<Either<FirebaseAuthException, UserCredential>> login({
    required String email,
    required String password,
  }) =>
      _repository.login(email: email, password: password);

  Future<Either<FirebaseException, UserModel>> getUserData() =>
      _repository.getUserData();

  Future<Either<FirebaseException, bool>> updateUserName(
          {required String name}) =>
      _repository.updateUserName(name: name);

  Future<Either<FirebaseException, bool>> sendOTP() => _repository.sendOTP();

  Future<Either<FirebaseException, bool>> updatePassword({
    required String newPassword,
  }) =>
      _repository.updatePassword(newPassword: newPassword);
}
