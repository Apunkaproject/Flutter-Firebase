import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  void onSignUp() {
    print("Name : " + name.text);
    print("Email : " + email.text);
    print("Number : " + number.text);
    print("Password : " + password.text);
    createAccount(email.text, password.text);
  }

  Future<void> createAccount(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print("Account Created");
      Fluttertoast.showToast(
        msg: "Account Created",
        backgroundColor: Colors.green[600],
      );
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "weak-password") {
        Fluttertoast.showToast(
          msg: "Week Password",
          backgroundColor: Colors.orange[400],
        );
        print("Weak Password");
      } else if (ex.code == "email-already-in-use") {
        Fluttertoast.showToast(
          msg: "Email Already exists",
          backgroundColor: Colors.red[400],
        );
        print("Email Already exists Login Please !");
      }
    } catch (ex) {
      print(ex);
    }
  }
}
