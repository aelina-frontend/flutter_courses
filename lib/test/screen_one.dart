import 'package:flutter/material.dart';
import 'package:untitled1/test/screen_two.dart';
import 'package:untitled1/test/provider/greeting_provider.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTwo(),
    );
  }
}
