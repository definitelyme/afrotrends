import 'package:afrotrends/blogger/infrastructure/firebase/models/firestore_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FsUserMapper on FirebaseUser {
  FsUser toLocalUser() {
    return FsUser(id: uid, name: displayName);
  }
}
