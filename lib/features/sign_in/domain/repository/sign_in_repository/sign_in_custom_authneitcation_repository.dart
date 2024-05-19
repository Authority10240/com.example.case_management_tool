

import 'package:case_management_tool/core/base_classes/base_repository.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';

abstract class SignInCustomAuthenticationRepository  extends BaseRepository<SignInCustomAuthenticationRepositoryParams, ResultFuture<String>>{}

class SignInCustomAuthenticationRepositoryParams extends BaseRepositoryParams{

  final String token ;

  SignInCustomAuthenticationRepositoryParams({required this.token});
}
