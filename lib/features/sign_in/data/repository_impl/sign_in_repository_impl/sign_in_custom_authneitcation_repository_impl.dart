
import 'package:case_management_tool/core/errors/failure.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:case_management_tool/features/sign_in/data/data_source/remote/authentication.dart';
import 'package:case_management_tool/features/sign_in/domain/repository/sign_in_repository/sign_in_custom_authneitcation_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SignInCustomAuthenticationRepository)
class SignInCustomAuthenticationRepositoryImpl extends SignInCustomAuthenticationRepository {
  final Authentication authentication;

  SignInCustomAuthenticationRepositoryImpl({required this.authentication});

  @override
  Future<ResultFuture<String>> call({SignInCustomAuthenticationRepositoryParams? params}) async{
    try {
      final result = await authentication.signInWithCustomToken(token: params!.token);
        return Right(result);
    } on FirebaseAuthException catch(e){
      return Left(ApiFailure(message: e.message!, statusCode:  int.parse(e.code)));
    }catch(ex){
      return Left(ApiFailure(message: "Network error: ${ex.toString()}", statusCode: 700));
    }
  }
  

}
