import 'package:flutter/material.dart';
import 'package:untitled1/setting_screen.dart';

class Tree
{
  Tree(this.branchCount);
  int branchCount;
}

class HomeScreen extends StatelessWidget {
  final int someThing;
  const HomeScreen(this.someThing,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Главный экран'),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => SettingScreen(45),
                    ),
                    );
                  },
                  child: const Text('Настройки')
              )
            ],
          )
        ),
      )
    );
  }
}
