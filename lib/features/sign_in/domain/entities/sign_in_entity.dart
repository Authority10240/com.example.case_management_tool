class SignInEntity {

  SignInEntity({required this.password, required this.email});
  final String email;
  final String password;

  SignInEntity copyWith({
  String? email ,
    String? password
}){
    return SignInEntity(password: password?? this.password, email: email?? this.email);
  }
}