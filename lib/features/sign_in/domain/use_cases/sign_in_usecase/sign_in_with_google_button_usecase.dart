
import 'package:case_management_tool/core/base_classes/base_usecase.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:case_management_tool/features/sign_in/domain/repository/sign_in_repository/sign_in_with_google_button_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SignInWithGoogleButtonUseCase extends BaseUseCase<SignInWithGoogleButtonUseCaseParams, ResultFuture<String>>{

  final SignInWithGoogleButtonRepository signInWithGoogleButtonRepository;

  SignInWithGoogleButtonUseCase({required this.signInWithGoogleButtonRepository});

  @override
  Future<ResultFuture<String>> call({SignInWithGoogleButtonUseCaseParams? params})async  {
    final ResultFuture<String> result = await signInWithGoogleButtonRepository.call() ;
    return result.fold((l) => Left(l), (r) => Right(r));
  }
}

class SignInWithGoogleButtonUseCaseParams extends BaseUseCaseParams{}
