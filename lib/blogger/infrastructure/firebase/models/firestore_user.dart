import 'package:afrotrends/blogger/domain/entities/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FsUser extends User {
  FsUser({String id, String name, String token}) : super(id: id, name: name, fcmToken: token);

  factory FsUser.fromDocument(DocumentSnapshot document) {
    if (document.exists) {
      Map<String, dynamic> map = document.data;
      return FsUser(
        id: map['id'],
        name: map['name'],
        token: map['_token'],
      );
    }
    return null;
  }

  Map<String, dynamic> toDocument() {
    return {
      "id": id,
      "name": name,
    };
  }
}
