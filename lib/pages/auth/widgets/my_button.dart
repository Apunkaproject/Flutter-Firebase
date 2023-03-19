import 'package:firebase_projects/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyButton extends StatelessWidget {
  final IconData icon;
  final String Btname;
  final VoidCallback ontap;
  const MyButton({super.key, required this.icon, required this.Btname, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: lightButtonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(
          icon,
              color: lightWhiteColor,
            ),
            SizedBox(width: 10),
            Text(
              Btname,
              style: TextStyle(
                fontSize: 18,
                color: lightWhiteColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
