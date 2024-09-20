import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  final int apples;
  const InfoScreen(this.apples,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Экран информации'),
          ],
        )
      ),
    );
  }
}
