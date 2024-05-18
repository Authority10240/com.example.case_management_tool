import 'package:flutter/material.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class SignInWithAppleFormButton extends StatelessWidget {

  const SignInWithAppleFormButton({super.key, required this.onResponse});

  final Function(AuthorizationCredentialAppleID credential) onResponse ;
  @override
  Widget build(BuildContext context) {
    return SignInWithAppleButton(
      onPressed: () async {
        final AuthorizationCredentialAppleID credentialAppleID = await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
        );
       // credentialAppleID.state
        //onResponse(credentialAppleID);

        // Now send the credential (especially `credential.authorizationCode`) to your server to create a session
        // after they have been validated with Apple (see `Integration` section for more information on how to do this)
      },
    );
  }
}
