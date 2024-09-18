import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/test/provider/greeting_provider.dart';
import 'package:untitled1/test/screen_two.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
        context.watch<GreetingProvider>().greeting,
        style: const TextStyle(fontSize: 40, color: Colors.green),
      ),
        Text(
          context.watch<GreetingProvider>().count.toString(),
          style: const TextStyle(fontSize: 40, color: Colors.red),
        ),
      ]
    );
  }
}
