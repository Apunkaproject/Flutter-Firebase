import 'package:firebase_projects/controller/auth_controller/signup_controller.dart';
import 'package:firebase_projects/pages/auth/widgets/my_button.dart';
import 'package:firebase_projects/pages/auth/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.put(SignupController());
    return Scaffold(
      appBar: AppBar(
        title: Text("😍 S I G N U P 🌳"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "Welcome ❤️",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: 30),
              MyTextField(
                icons: Icons.person,
                lable: "Enter name",
                Onchange: signupController.name,
              ),
              SizedBox(height: 10),
              MyTextField(
                icons: Icons.email,
                lable: "Email id",
                Onchange: signupController.email,
              ),
              SizedBox(height: 10),
              MyTextField(
                icons: Icons.phone,
                lable: "Phone Number",
                Onchange: signupController.number,
              ),
              SizedBox(height: 10),
              MyTextField(
                icons: Icons.password,
                lable: "Password",
                Onchange: signupController.password,
              ),
              SizedBox(height: 20),
              MyButton(
                icon: Icons.person_add,
                Btname: "SIGN UP",
                ontap: () {
                  signupController.onSignUp();
                },
              ),
              SizedBox(height: 20),
              MyButton(
                icon: Icons.admin_panel_settings_rounded,
                Btname: "LOGIN",
                ontap: () {
                  Get.toNamed("/login");
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
