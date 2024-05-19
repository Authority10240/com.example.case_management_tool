import 'package:case_management_tool/features/sign_in/data/data_source/remote/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

@Singleton(as: Authentication)
class FirebaseAuthentication extends Authentication{

  final FirebaseAuth firebaseAuth;

  FirebaseAuthentication({required this.firebaseAuth});
  @override
  Future<String> signInWithAppleCredentials({required credential}) {
    // TODO: implement signInWithAppleCredentials
    throw UnimplementedError();
  }

  @override
  Future<String> signInWithCustomToken({required String token}) {
    // TODO: implement signInWithCustomToken
    throw UnimplementedError();
  }

  @override
  Future<String> signInWithEmailAddress({required String email, required password}) async {
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "User signed in successfully";
    }catch(ex){
      rethrow;
    }
  }

  @override
  Future<String> signInWithGoogleButton() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      // Optional clientId
      // clientId: 'your-client_id.apps.googleusercontent.com',
      scopes: scopes,
    );
    try {
      await googleSignIn.signIn();
      return "signed in successfully";
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<String> signInWithGoogleCredentials({required credential}) {
    // TODO: implement signInWithGoogleCredentials
    throw UnimplementedError();
  }
  
}

const List<String> scopes = <String>[
  'email',
  'https://www.googleapis.com/auth/contacts.readonly',
];

