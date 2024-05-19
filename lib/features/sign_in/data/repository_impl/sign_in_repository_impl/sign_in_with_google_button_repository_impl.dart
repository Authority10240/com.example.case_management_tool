
import 'package:case_management_tool/core/errors/failure.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:case_management_tool/features/sign_in/data/data_source/remote/authentication.dart';
import 'package:case_management_tool/features/sign_in/domain/repository/sign_in_repository/sign_in_with_google_button_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SignInWithGoogleButtonRepository)
class SignInWithGoogleButtonRepositoryImpl extends SignInWithGoogleButtonRepository {

  SignInWithGoogleButtonRepositoryImpl({required this.authentication});

  final Authentication authentication;

  @override
  Future<ResultFuture<String>> call({SignInWithGoogleButtonRepositoryParams? params})async {
   try{

     return Right( await authentication.signInWithGoogleButton());
   }on FirebaseAuthException catch(e){
     return Left(ApiFailure(message: e.message!, statusCode: int.parse(e.code)));
   } catch(ex){
     return Left(ApiFailure(message: ex.toString(), statusCode: 700));

   }
  }
  

}
