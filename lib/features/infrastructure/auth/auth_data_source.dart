import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terralith/features/domain/auth/interface/auth_repository_base.dart';
import 'package:terralith/features/domain/auth/model/user_model.dart';

class AuthDataSource implements AuthRepositoryBase {
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  @override
  Future<Either<FirebaseAuthException, UserCredential>> login({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(credential);
    } on FirebaseAuthException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<FirebaseException, UserModel>> getUserData() async {
    try {
      final data = await db
          .collection('users')
          .where('userId', isEqualTo: auth.currentUser!.uid)
          .get();

      if (data.docs.isEmpty) {
        return Left(
          FirebaseException(
            message: 'Data is Empty',
            code: '',
            plugin: '',
          ),
        );
      }

      final user = data.docs.first.data();
      return Right(UserModel.fromJson(user));
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<FirebaseException, bool>> updateUserName(
      {required String name}) async {
    try {
      final querySnapshot = await db
          .collection('users')
          .where('userId', isEqualTo: auth.currentUser!.uid)
          .limit(1) // Ensure only one document is fetched
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        await querySnapshot.docs.first.reference.update({'name': name});
        return const Right(true);
      } else {
        return Left(
          FirebaseException(
            plugin: 'Firestore',
            message: 'No user document found with the given userId',
          ),
        );
      }
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }
}