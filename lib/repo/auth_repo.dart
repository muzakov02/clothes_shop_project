import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUp({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw _mapError(e);
    } catch (e) {
      throw Exception('Server Exception');
    }
  }
  Future<void> signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw _mapError(e);
    } catch (e) {
      throw Exception('Server Exception');
    }
  }

  String _mapError(FirebaseAuthException e) {
    print(e);
    switch (e.code) {
      case 'invalid-email':
        return 'Invalid email.';
      case 'user-not-found':
        return 'User not found.';
      case 'wrong-password':
        return 'Wrong password.';
      case 'email-already-in-use':
        return 'Email already in use.';
      case 'weak-password':
        return 'Weak password.';
      default:
        return 'Auth error: ${e.message}';
    }
  }
}
