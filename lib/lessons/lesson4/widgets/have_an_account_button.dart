import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget haveAnAccountButton({required String accountText, required Function() onPressed, required String buttonText }) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(accountText),
      TextButton(
        onPressed: onPressed,
        child: Text(buttonText, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Colors.black),),
      )
    ],
  );
}
