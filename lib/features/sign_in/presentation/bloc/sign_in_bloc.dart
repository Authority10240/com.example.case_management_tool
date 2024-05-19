import 'package:case_management_tool/core/base_classes/base_bloc.dart';
import 'package:case_management_tool/core/base_classes/base_event.dart';
import 'package:case_management_tool/core/base_classes/base_state.dart';
import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:case_management_tool/features/sign_in/domain/entities/sign_in_entity.dart';
import 'package:case_management_tool/features/sign_in/domain/use_cases/sign_in_usecase/sign_in_custom_authneitcation_usecase.dart';
import 'package:case_management_tool/features/sign_in/domain/use_cases/sign_in_usecase/sign_in_email_and_password_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc
    extends BaseBloc<SignInPageEvent, SignInPageState> {


    SignInBloc({
        required this.signInCustomAuthenticationUseCase,
        required this.signInWithEmailAndPasswordUseCase
}): super(SignInPageInitState()) {
        on<SignInCustomAuthenticationEvent>((event, emit)=> _onSignInCustomAuthenticationEvent(event,emit));
        on<SignInEmailAndPasswordEvent>((event, emit)=> _onSignInEmailAndPasswordEvent(event, emit));
    }

    final SignInCustomAuthenticationUseCase signInCustomAuthenticationUseCase;
    final SignInWithEmailAndPasswordUseCase signInWithEmailAndPasswordUseCase;

    Future<void> _onSignInEmailAndPasswordEvent(
        SignInEmailAndPasswordEvent event,
        Emitter<SignInPageState> emit
        )async{
        emit(SignInEmailAndPasswordState()..dataState = DataState.loading);

        final ResultFuture<String> result = await signInWithEmailAndPasswordUseCase.call(params: SignInWithEmailAndPasswordUseCaseParams(signInEntity: event.signInEntity));

        result.fold(
                (l) => emit(SignInEmailAndPasswordState(error: l.message)..dataState = DataState.error),
                (r) => emit(SignInEmailAndPasswordState()..dataState = DataState.success)
        );
    }

    Future<void> _onSignInCustomAuthenticationEvent(
    SignInCustomAuthenticationEvent event,
        Emitter<SignInPageState> emit)async {

        emit(SignInCustomAuthenticationState()..dataState = DataState.loading);

        final ResultFuture<String> result = await signInCustomAuthenticationUseCase.call(params: SignInCustomAuthenticationUseCaseParams(token: event.token));

        result.fold(
                (l)=> emit(SignInCustomAuthenticationState(error:l.message)..dataState = DataState.error),
                (r)=> emit(SignInCustomAuthenticationState( )..dataState = DataState.success)
        );


    }
} 
