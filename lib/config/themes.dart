import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart';

class ThemeController extends GetxController {
  var isDarkMode = false.obs;
  ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: lightBgColor,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: lightTextColor,
        fontSize: 30,
      ),
      titleLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: lightTextColor,
        fontSize: 20,
      ),
    ),
  );

  ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBgColor,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: darkTextColor,
        fontSize: 35,
      ),
      titleLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: darkTextColor,
        fontSize: 20,
      ),
    ),
  );

  void changeTheme() {
    isDarkMode.value = !isDarkMode.value;
    updateTheme();
  }

  void updateTheme() {
    if (isDarkMode.value) {
      Get.changeTheme(darkTheme);
    } else {
      Get.changeTheme(lightTheme);
    }
  }
}
