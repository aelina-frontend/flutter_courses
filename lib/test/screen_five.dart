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
    return Center(
      child: Text(
        context.read<GreetingProvider>().greeting,
        style: TextStyle(fontSize: 40, color: Colors.green),
      )
    );
  }
}
