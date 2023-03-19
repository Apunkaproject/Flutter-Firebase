import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_projects/config/routes.dart';
import 'package:firebase_projects/config/themes.dart';
import 'package:firebase_projects/pages/auth/signup_page.dart';
import 'package:firebase_projects/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CALCU',
      darkTheme: themeController.darkTheme,
      theme: themeController.lightTheme,
      getPages: pages,
      // home: const HomePage(),
      home: SignupPage(),
    );
  }
}
