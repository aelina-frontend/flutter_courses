import 'package:flutter/material.dart';
import 'package:untitled1/modules/presentation/joke_screen.dart';
import 'package:flutter/cupertino.dart';
import 'core/app_assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: JokeScreen(),
      );
  }
}


