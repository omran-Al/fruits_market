import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fruits_market/features/auth/domain/models/user_models.dart';
import 'package:fruits_market/features/auth/domain/repositre/auth_rep.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Exception, UserModel>> loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, UserModel>> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      return Right(UserModel(
        email: userCredential.user!.email!,
      ));
    } catch (e) {
      return Left(Exception('something went wrong'));
    }
  }

  Future<Either<Exception, UserModel>> completeInformation(
      {String? name,
      String? phoneNumber,
      String? address,
      UserModel? user}) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');

      UserModel userModel = UserModel(
          email: user!.email,
          name: name,
          phonNumber: phoneNumber,
          address: address);
      await users.add(userModel.toJson());
      return Right(userModel);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
