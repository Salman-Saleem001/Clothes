import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //SignUp Email & password
  Future signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final User user = result.user!;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //auth change user stream
  Stream<User?> get user {
    return _auth.authStateChanges();
  }

//Login with google
  Future loginWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      final User user = result.user!;
      return user;
    } catch (e) {
      print('No user');
      return null;
    }
  }

  // sign out
  Future logOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
