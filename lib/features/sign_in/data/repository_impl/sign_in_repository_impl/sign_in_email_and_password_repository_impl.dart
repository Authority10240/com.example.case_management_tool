
import 'package:case_management_tool/core/errors/failure.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:case_management_tool/features/sign_in/data/data_source/remote/authentication.dart';
import 'package:case_management_tool/features/sign_in/domain/repository/sign_in_repository/sign_in_email_and_password_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SignInWithEmailAndPasswordRepository)
class SignInWithEmailAndPasswordRepositoryImpl extends SignInWithEmailAndPasswordRepository {

  SignInWithEmailAndPasswordRepositoryImpl({required this.authentication});

  final Authentication authentication;
  @override
  Future<ResultFuture<String>> call({SignInWithEmailAndPasswordRepositoryParams? params}) async {
    try {
      final result = await authentication.signInWithEmailAddress(email: params!.signInEntity.email, password:  params!.signInEntity.password);
      return Right(result);
    } on FirebaseAuthException catch(e){
      return Left(ApiFailure(message: e.message!, statusCode:  int.parse(e.code)));
    }catch(ex){
      return Left(ApiFailure(message: "Network error: ${ex.toString()}", statusCode: 700));
    }
  }
  

}
