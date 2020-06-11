import 'package:afrotrends/blogger/core/failures/auth_failure.dart';
import 'package:afrotrends/blogger/domain/entities/user.dart';
import 'package:afrotrends/blogger/domain/facades/auth_facade.dart';
import 'package:afrotrends/blogger/infrastructure/auth/firestore_auth_impl.dart';
import 'package:afrotrends/blogger/infrastructure/firebase/models/firestore_user.dart';
import 'package:afrotrends/blogger/infrastructure/firebase/models/firestore_user_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthFacade)
class FirebaseAuthImpl implements AuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirestoreAuthImpl _firestoreAuthImpl;
  
  FirebaseAuthImpl({FirebaseAuth firebaseAuth, FirestoreAuthImpl firestoreAuthImpl})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _firestoreAuthImpl = firestoreAuthImpl;
  
  @override
  Future<User> get user async => (await _firebaseAuth.currentUser())?.toLocalUser();
  
  @override
  Future<bool> get isAuthenticated async => (await user) != null;
  
  @override
  Future<Either<AuthFailure, Unit>> anonymousAuthentication() async {
    try {
      if (!await isAuthenticated){
        await _firebaseAuth.signInAnonymously();
        await _firestoreAuthImpl.create(docId: (await user).id, data: ((await user) as FsUser).toDocument());
      }
      return right(unit);
    } on PlatformException catch (e) {
      print("FacadeImpl Exception => $e");
      return left(AuthFailure.operationNotAllowed());
    }
  }
  
  @override
  Future<Either<AuthFailure, Unit>> facebookAuthentication() {
    // TODO: implement facebookAuthentication
    throw UnimplementedError();
  }
  
  @override
  Future<Either<AuthFailure, Unit>> googleAuthentication() {
    // TODO: implement googleAuthentication
    throw UnimplementedError();
  }
}
