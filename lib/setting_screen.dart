import 'package:flutter/material.dart';
import 'package:untitled1/info_screen.dart';

class SettingScreen extends StatelessWidget {
  final int a;
  const SettingScreen(this.a,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Экран настроек'),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => InfoScreen(654),
                    ),
                    );
                  },
                  child: const Text('Информация')
              )
            ],
          ),
        )
      )
    );
  }
}
