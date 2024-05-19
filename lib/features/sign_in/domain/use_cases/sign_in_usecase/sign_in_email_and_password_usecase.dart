
import 'package:case_management_tool/core/base_classes/base_usecase.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:case_management_tool/features/sign_in/domain/entities/sign_in_entity.dart';
import 'package:case_management_tool/features/sign_in/domain/repository/sign_in_repository/sign_in_email_and_password_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SignInWithEmailAndPasswordUseCase extends BaseUseCase<SignInWithEmailAndPasswordUseCaseParams, ResultFuture<String>>{

  final SignInWithEmailAndPasswordRepository signInWithEmailAndPasswordRepository;

  SignInWithEmailAndPasswordUseCase({required this.signInWithEmailAndPasswordRepository});

  @override
  Future<ResultFuture<String>> call({SignInWithEmailAndPasswordUseCaseParams? params})async {
    final ResultFuture<String> result = await signInWithEmailAndPasswordRepository.call();

    return result.fold((l) => Left(l), (r) => Right(r));
  }
}

class SignInWithEmailAndPasswordUseCaseParams extends BaseUseCaseParams{

  SignInWithEmailAndPasswordUseCaseParams({required this.signInEntity});
  final SignInEntity signInEntity;

}
