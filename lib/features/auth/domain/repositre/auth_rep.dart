import 'package:fruits_market/features/auth/domain/models/user_models.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Exception, UserModel>> loginWithGoogle();
  Future<Either<Exception, UserModel>> loginWithFacebook();
  Future<Either<Exception, UserModel>> completeInformation({
    required String name,
    required String phoneNumber,
    required String address,
    required UserModel user,
  });
}
