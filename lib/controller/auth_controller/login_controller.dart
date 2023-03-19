import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void onLogin() {
    signIn(email.text, password.text);
  }

  Future<void> signIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      print("Login");
      Fluttertoast.showToast(
        msg: "Login successful",
        backgroundColor: Colors.green[600],
      );
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "user-not-found") {
        print("email id dose not exists");
        Fluttertoast.showToast(
          msg: "Email id dose not exists",
          backgroundColor: Colors.red[400],
        );
      } else if (ex.code == "wrong-password") {
        print("Wrong password");
        Fluttertoast.showToast(
          msg: "Wrong password",
          backgroundColor: Colors.red[400],
        );
      }
    }
  }
}
