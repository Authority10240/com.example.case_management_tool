part of 'sign_in_bloc.dart';
 @immutable
abstract class SignInPageEvent extends BaseEvent {}

 class SignInCustomAuthenticationEvent extends SignInPageEvent{

  SignInCustomAuthenticationEvent({required this.token});
  final String token;


 }

 class SignInEmailAndPasswordEvent extends SignInPageEvent{

  SignInEmailAndPasswordEvent({required this.signInEntity});
  final SignInEntity signInEntity;


 }
