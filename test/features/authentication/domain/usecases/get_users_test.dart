import 'package:case_management_tool/features/authentication/domain/entites/user.dart';
import 'package:case_management_tool/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:case_management_tool/features/authentication/domain/usecases/get_users.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'authnetication_repository.mock.dart';






void main(){
  late AuthenticationRepository mockAuthenticationRepository;
  late GetUsersUseCase getUsersUseCase;
  
  setUp((){
    mockAuthenticationRepository = MockAuthenticationRepository();
    getUsersUseCase = GetUsersUseCase(mockAuthenticationRepository);
  });

  const tResponse = [User(id: 1, name: "Freedom", avatar: "My avatar", createAt: 'today'
  )];
  
  test("should call [GetUserRepository.getUsers] and return [List<User>]", ()async{
    //arrange
    when(
        ()=>  mockAuthenticationRepository.getUser()).thenAnswer((invocation)async => const  Right(tResponse));
    
    //act
    final result = await getUsersUseCase.call();

    //assert
    expect(result, equals(const Right<dynamic,List<User>>(tResponse)));
    verify(()=> mockAuthenticationRepository.getUser()).called(1);
    verifyNoMoreInteractions(mockAuthenticationRepository);

  });
}