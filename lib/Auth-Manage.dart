import 'package:firebase_auth/firebase_auth.dart';

class AuthManage {
  Future signUp(String useremail, String userpass,) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: useremail, password: userpass);
    } catch (error) {
      print('Error signing up: $error');
    }
  }
}

