import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepositoryBase {
  Future<Either<FirebaseAuthException, UserCredential>> login({
    required String email,
    required String password,
  });
}
