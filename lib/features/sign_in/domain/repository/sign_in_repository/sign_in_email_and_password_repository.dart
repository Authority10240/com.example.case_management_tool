

import 'package:case_management_tool/core/base_classes/base_repository.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:case_management_tool/features/sign_in/domain/entities/sign_in_entity.dart';

abstract class SignInWithEmailAndPasswordRepository  extends BaseRepository<SignInWithEmailAndPasswordRepositoryParams, ResultFuture<String>>{}

class SignInWithEmailAndPasswordRepositoryParams extends BaseRepositoryParams{

  SignInWithEmailAndPasswordRepositoryParams({required this.signInEntity});

  final SignInEntity signInEntity;
}
