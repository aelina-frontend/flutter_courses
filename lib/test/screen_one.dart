import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/test/screen_two.dart';
import 'package:untitled1/test/provider/greeting_provider.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScreenTwo(),
          ElevatedButton(
              onPressed: () {
            context.read<GreetingProvider>().increase();
            // log(context.read<GreetingProvider>().count.toString());
            setState(() {});
            print('lalala');
          }, child: const Text('+100')),
          ElevatedButton(
              onPressed: () {
            context.read<GreetingProvider>().decrease();
            // log(context.read<GreetingProvider>().count.toString());
            setState(() {});
          }, child: const Text('-100')),
        ],
      ),
    );
  }
}
