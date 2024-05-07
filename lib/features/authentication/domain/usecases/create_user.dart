import 'package:case_management_tool/core/base_classes/usecase.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:case_management_tool/features/authentication/domain/repositories/authentication_repository.dart';

class CreateUser extends BaseUseCase<void, CreateUserParams> {

  CreateUser(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  ResultFuture<void> call({required CreateUserParams? params}) =>
      _authenticationRepository.createUser(params: CreateUserRepositoryParams(
          avatar: params!.avatar,
          name: params.name,
          createdAt: params.createdAt ));
}


class CreateUserParams extends BaseUseCaseParams{
  CreateUserParams({
    required this.name,
  required this.avatar,
  required this.createdAt});

  final String createdAt;
  final String name;
  final String avatar;

  @override
  // TODO: implement props
  List<Object?> get props => [name, createdAt, avatar];

}