import 'dart:io';

import 'package:afrotrends/blogger/app/cache_manager.dart';
import 'package:afrotrends/blogger/infrastructure/notification_impls/token_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meta/meta.dart';
import 'package:afrotrends/blogger/core/failures/cache_failure.dart';
import 'package:afrotrends/blogger/core/failures/failure.dart';
import 'package:afrotrends/core/utils/extensions/string_extension.dart';

@lazySingleton
class TokenCacheImpl extends CacheManager {
  static const KEY_TOKEN = "_fcm_token_key";
  static const KEY_PLATFORM = "_platform";
  final SharedPreferences _prefs;

  TokenCacheImpl({@required SharedPreferences preferences})
      : _prefs = preferences;

  Future<Either<Failure, bool>> storeToken({@required String token}) async {
    try {
      var isTokenStored = await _prefs.setString(KEY_TOKEN, token);
      var isPlatformStored = await _prefs.setString(
          KEY_PLATFORM, Platform.operatingSystem.firstToUpper());

      if (!isTokenStored || !isPlatformStored)
        throw CacheFailure.persistFailed();

      return right(isTokenStored && isPlatformStored);
    } catch (e) {
      return left(CacheFailure.persistFailed(message: e?.message));
    }
  }

  Either<Failure, Token> getToken() {
    try {
      var token = _prefs.getString(KEY_TOKEN);
      var platform = _prefs.getString(KEY_PLATFORM);

      if (token == null ||
          platform == null ||
          token.isEmpty ||
          platform.isEmpty) throw CacheFailure.failedToRetrieve();

      return right(Token(token: token, platform: platform));
    } catch (e) {
      return left(CacheFailure.failedToRetrieve(message: e?.message));
    }
  }
}
