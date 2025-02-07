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
  Future<Either<FirebaseException, UserModel?>> getUserData() async {
    try {
      final data = await db
          .collection('users')
          .where('userId', isEqualTo: auth.currentUser!.uid)
          .get();

      if (data.docs.isEmpty) {
        UserModel user = UserModel(
          avatar: '1.png',
          name: '',
          userId: auth.currentUser!.uid,
          email: auth.currentUser!.email ?? '',
        );
        await db.collection('users').add({
          'name': '',
          'email': auth.currentUser!.email,
          'avatar': '1.png',
          'userId': auth.currentUser!.uid,
        });
        return Right(user);
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
        await db.collection('users').add({
          'name': name,
          'email': auth.currentUser!.email,
          'avatar': '1.png',
          'userId': auth.currentUser!.uid,
        });
        return const Right(true);
      }
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<FirebaseException, bool>> updateUserAvatar(
      {required String avatar}) async {
    try {
      final querySnapshot = await db
          .collection('users')
          .where('userId', isEqualTo: auth.currentUser!.uid)
          .limit(1) // Ensure only one document is fetched
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        await querySnapshot.docs.first.reference.update({'avatar': avatar});
        return const Right(true);
      } else {
        await db.collection('users').add({
          'name': '',
          'email': auth.currentUser!.email,
          'avatar': avatar,
          'userId': auth.currentUser!.uid,
        });
        return const Right(true);
      }
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<FirebaseException, bool>> sendOTP() async {
    try {
      await auth.sendPasswordResetEmail(email: auth.currentUser?.email ?? '');
      return const Right(true);
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<FirebaseException, bool>> updatePassword({
    required String newPassword,
  }) async {
    try {
      await auth.currentUser?.updatePassword(newPassword);
      return const Right(true);
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }
}
