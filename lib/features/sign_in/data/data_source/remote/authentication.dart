

abstract class Authentication {

  Future<String> signInWithCustomToken({required String token});

  Future<String> signInWithEmailAddress ({required String email, required password});

  Future<String> signInWithGoogleCredentials({required  credential});

  Future<String> signInWithAppleCredentials({required credential });

}