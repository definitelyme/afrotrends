import 'package:afrotrends/blogger/core/failures/auth_failure.dart';
import 'package:afrotrends/blogger/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthFacade {
  Future<User> get user;
  
  Future<bool> get isAuthenticated;

  Future<Either<AuthFailure, Unit>> googleAuthentication();

  Future<Either<AuthFailure, Unit>> facebookAuthentication();

  Future<Either<AuthFailure, Unit>> anonymousAuthentication();
}
