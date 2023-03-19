import 'package:firebase_projects/pages/auth/login_page.dart';
import 'package:firebase_projects/pages/auth/signup_page.dart';
import 'package:get/get.dart';

var pages = [
  GetPage(
    name: "/login",
    page: () => LoginPage(),
  ),
  GetPage(
    name: "/signup",
    page: () => SignupPage(),
  ),
];
