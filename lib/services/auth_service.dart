import 'package:airplane/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:airplane/models/user_model.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          hobby: hobby,
          balance: 20000000);

      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }
}
