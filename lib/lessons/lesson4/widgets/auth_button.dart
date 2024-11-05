import 'package:flutter/material.dart';

Widget authButtonWidget({required String text, required Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 53,
      width: 199,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [
            Color(0xFF8EDDFF),
            Color(0xFF769DAD),
          ],
          begin: Alignment.topCenter, end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
      ),
    ),
  );
}
