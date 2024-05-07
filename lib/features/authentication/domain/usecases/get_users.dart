import 'package:case_management_tool/core/base_classes/usecase.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:case_management_tool/features/authentication/domain/entites/user.dart';
import 'package:case_management_tool/features/authentication/domain/repositories/authentication_repository.dart';

class GetUsersUseCase extends BaseUseCase<List<User>, GetUsersUseCaseParams>{



  GetUsersUseCase( this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  ResultFuture<List<User>> call({ GetUsersUseCaseParams? params}) async => await _authenticationRepository.getUser();

}

class GetUsersUseCaseParams extends BaseUseCaseParams{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}