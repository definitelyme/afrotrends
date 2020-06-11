import 'dart:io';

import 'package:afrotrends/blogger/core/failures/auth_failure.dart';
import 'package:afrotrends/blogger/domain/entities/user.dart';
import 'package:afrotrends/blogger/infrastructure/firebase/models/firestore_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreAuthImpl {
  static const USERS_COLLECTION = "users";
  static const TOKENS_COLLECTION = "tokens";
  final Firestore _firestore;
  final FirebaseAuth _firebaseAuth;

  FirestoreAuthImpl({@required Firestore firestore, @required FirebaseAuth firebaseAuth})
      : _firestore = firestore ?? Firestore.instance,
        _firebaseAuth = firebaseAuth;

  // Since this is FirestoreAuthImpl, we are gonna set
  // the documentId to the Auth User Id
  Future<String> get documentId async => (await _firebaseAuth.currentUser())?.uid;

  Future<Either<AuthFailure, Unit>> create({
    String collection = USERS_COLLECTION,
    String docId,
    @required Map<String, dynamic> data,
    bool merge = false,
  }) async {
    await _firestore.collection(collection).document(await documentId).setData(data, merge: merge);
    return right(unit); // No one really cares
  }

  Future<Either<AuthFailure, Unit>> storeDeviceToken({
    String collection = USERS_COLLECTION,
    String docId,
    String data,
    bool merge = false,
  }) async {
    var retrieved = retrieveToken(token: data);
    // If First retrieved token is not equal to TOKEN param, add new device
    if ((await retrieved).getOrElse(() => null)?.token != data)
      _firestore.collection(collection).document(await documentId).collection(TOKENS_COLLECTION).document().setData(
            Token(token: data).toDocument(),
            merge: merge,
          );
    return right(unit);
  }

  Future<Either<AuthFailure, Token>> retrieveToken({
    String collection = USERS_COLLECTION,
    String docId,
    String token,
  }) async {
    try {
      var docs = await _firestore
          .collection(collection)
          .document(await documentId)
          .collection(TOKENS_COLLECTION)
          .where(token != null ? "_token" : "platform", isEqualTo: token ?? Platform.operatingSystem)
          .getDocuments();
      return right(Token.fromDocument(docs.documents[0]));
    } on RangeError catch (e) {
      return right(null);
    }
  }

  Future<Either<AuthFailure, User>> get({
    String collection = USERS_COLLECTION,
    String docId,
  }) async {
    final doc = await _firestore.collection(collection).document(await documentId).get();
    return right(FsUser.fromDocument(doc));
  }
}

class Token {
  final String token;
  final String platform;
  final DateTime createdAt;

  Token({@required this.token, String platform, this.createdAt}) : platform = Platform.operatingSystem;

  Map<String, dynamic> toDocument() {
    return {
      '_token': token,
      'platform': platform,
      'created_at': FieldValue.serverTimestamp(),
    };
  }

  factory Token.fromDocument(DocumentSnapshot snapshot) {
    if (snapshot.exists)
      return Token(
        token: snapshot.data['_token'],
        platform: snapshot.data['platform'],
        createdAt: snapshot.data['created_at']?.toDate(),
      );
    return null;
  }

  @override
  String toString() => "Token(_token: $token, platform: $platform, createdAt: $createdAt)";
}
