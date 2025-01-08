import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/auth/interface/auth_repository_base.dart';

class AuthDataSource implements AuthRepositoryBase {
  @override
  Future<Either<FirebaseAuthException, UserCredential>> login({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(credential);
    } on FirebaseAuthException catch (e) {
      return Left(e);
    }
  }
}
