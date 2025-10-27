import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthService {
  static Future<UserCredential> googleWeb() async {
    final provider = GoogleAuthProvider();
    return await FirebaseAuth.instance.signInWithProvider(provider);
  }

  static Future<UserCredential> google() async {
    GoogleSignIn.instance.initialize();
    final GoogleSignInAccount googleUser = await GoogleSignIn.instance
        .authenticate();
    final GoogleSignInAuthentication googleAuth = googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  static Future<UserCredential> appleIdWeb() async {
    final provider = OAuthProvider("apple.com");
    return await FirebaseAuth.instance.signInWithProvider(provider);
  }

  static Future<UserCredential> appleId() async {
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      accessToken: appleCredential.authorizationCode,
    );

    return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
  }

  static Future logout() async {
    try {
      await GoogleSignIn.instance.signOut();
    // ignore: empty_catches
    } catch (e) {}
    await FirebaseAuth.instance.signOut();
  }
}
