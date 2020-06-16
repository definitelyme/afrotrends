import 'dart:io';

import 'package:meta/meta.dart';

class Token {
  final String token;
  final String platform;

  Token({@required this.token, String platform}) : platform = Platform.operatingSystem;

  @override
  String toString() => "Token(_token: $token, platform: $platform)";
}