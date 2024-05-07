import 'package:case_management_tool/core/base_classes/repository.dart';
import 'package:case_management_tool/core/errors/failure.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:case_management_tool/features/authentication/domain/entites/user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository extends BaseRepository<void, CreateUserRepositoryParams>{
   AuthenticationRepository();

  ResultFuture<void> createUser({
    required CreateUserRepositoryParams params
});

 ResultFuture<List<User>> getUser();
}



class CreateUserRepositoryParams extends BaseRepositoryParams{
  CreateUserRepositoryParams({
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

abstract class GetUsersRepository extends BaseRepository<List<User>,GetUsersRepositoryParams>{

}

class GetUsersRepositoryParams extends BaseRepositoryParams{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}