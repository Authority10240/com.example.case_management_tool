import 'package:case_management_tool/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:case_management_tool/features/authentication/domain/usecases/create_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'authnetication_repository.mock.dart';

//1.what does the class depend on
//Answer: -- Authentication repository
//2.how can we create a fake version of the dependency
//Answer: -- use mocktail
//3. how do we controlled what our dependencies do
//Answer: -- using the mocktail APIs






void main(){

  late CreateUser createUser;
  late MockAuthenticationRepository  mockAuthenticationRepository;
  late CreateUserParams params;

  setUp((){
    mockAuthenticationRepository = MockAuthenticationRepository();
    createUser = CreateUser(mockAuthenticationRepository);
    params = CreateUserParams(name: 'Freedom',createdAt:'today' ,avatar:'myAvater' );
    registerFallbackValue(CreateUserRepositoryParams(name: 'Freedom',createdAt:'today' ,avatar:'myAvater' ));
  });

  test('should call the [AuthenticationRepository.createUser]', ()async{
    //Arrange
    when(() => mockAuthenticationRepository.createUser(
        params: any(named: 'params' ))
    ).thenAnswer((_) async => const Right(null));

    //Act
    final result = await createUser(params: params);

    //Assert
    expect(result, const Right<dynamic, void>(null));
    verify(
        ()=> mockAuthenticationRepository.createUser(params: any(named: 'params' ))
    ).called(1);
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });
}
