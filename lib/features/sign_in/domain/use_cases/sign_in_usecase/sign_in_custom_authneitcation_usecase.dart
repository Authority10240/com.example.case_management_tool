

import 'package:case_management_tool/constants/type_def.dart';
import 'package:case_management_tool/core/base_classes/base_usecase.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:case_management_tool/features/sign_in/domain/repository/sign_in_repository/sign_in_custom_authneitcation_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SignInCustomAuthenticationUseCase extends BaseUseCase<SignInCustomAuthenticationUseCaseParams, ValueResult<String>>{

  final SignInCustomAuthenticationRepository signInCustomAuthenticationRepository;

  SignInCustomAuthenticationUseCase({required this.signInCustomAuthenticationRepository});

  @override
  Future<ResultFuture<String>> call({SignInCustomAuthenticationUseCaseParams? params}) async {
    ResultFuture<String> result = await signInCustomAuthenticationRepository.call(params: SignInCustomAuthenticationRepositoryParams(token: params!.token));

   return result.fold((l) =>
       Left(l)
    , (r) =>
       Right(r)
     );
  }
}

class SignInCustomAuthenticationUseCaseParams extends BaseUseCaseParams{
  final String token;

  SignInCustomAuthenticationUseCaseParams({required this.token});
}
