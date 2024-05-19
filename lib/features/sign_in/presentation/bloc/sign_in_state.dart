part of 'sign_in_bloc.dart';
@immutable
abstract class SignInPageState extends BaseState {

  SignInPageState({super.error});
}

class SignInPageInitState extends SignInPageState  {}

class SignInCustomAuthenticationState extends SignInPageState{
  SignInCustomAuthenticationState({super.error});
}

class SignInEmailAndPasswordState extends SignInPageState{
  SignInEmailAndPasswordState({super.error});
}

class SignInWithGoogleButtonClickedState extends SignInPageState{
  SignInWithGoogleButtonClickedState({super.error});
}