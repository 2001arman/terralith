import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/auth/model/user_model.dart';

abstract class AuthRepositoryBase {
  Future<Either<FirebaseAuthException, UserCredential>> login({
    required String email,
    required String password,
  });

  Future<Either<FirebaseException, UserModel?>> getUserData();
  Future<Either<FirebaseException, bool>> updateUserName({
    required String name,
  });

  Future<Either<FirebaseException, bool>> sendOTP();
  Future<Either<FirebaseException, bool>> updatePassword({
    required String newPassword,
  });
}
