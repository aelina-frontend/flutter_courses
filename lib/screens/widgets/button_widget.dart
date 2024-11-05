import 'package:flutter/material.dart';

import '../first_screen.dart';

Widget buttonWigdet({required String text, required Function() onPressed}) {
  return ElevatedButton(
      onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      fixedSize: Size(280, 60),
      backgroundColor: Colors.deepPurple,
    ),
    child: Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
          fontSize: 22,
          color: Colors.white),
    ),
  );
}