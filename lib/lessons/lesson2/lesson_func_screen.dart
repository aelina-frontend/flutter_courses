import 'package:flutter/material.dart';

class LessonFuncScreen extends StatefulWidget {
  const LessonFuncScreen({super.key});

  @override
  State<LessonFuncScreen> createState() => _LessonFuncScreenState();
}

class _LessonFuncScreenState extends State<LessonFuncScreen> {
  String name = 'Bermet';
  int age = 35;
  double kg = 60.90;
  bool hasChild = false;

  void sayHello() {
    print('privet');
  }

  void showName(String name) {
    print('name: $name');
  }

  void showNameTo() {
    print('name: Aelina');
  }

  void showNameThree() {
    print('name: Bermet');
  }

  void showData(String name, String surname) {
    print('name: $name, surname: $surname');
  }

  void showGoods({required String name, required int price}) {
    print('name: $name, price: \$$price');
  }

  bool isLike = false;

  void like() {
    setState(() {
      isLike = !isLike;
    });
  }

  bool isColor = false;

  void changeColor() {
    setState(() {
      isColor = !isColor;
    });
  }

  bool isBackground = false;

  void changeBackground() {
    setState(() {
      isBackground = !isBackground;
    });
  }

  String car = 'BmW.gTN.com';

  void stringMetod() {
    print('${car.length}');
    print('${car.isEmpty}');
    print('${car.toLowerCase()}');
    print('${car.toUpperCase()}');
    print('${car.trim()}');
    print('${car.trimRight()}');
    print('${car.contains('N@')}');
    print('${car.startsWith('b')}');
    print('${car.endsWith('.ru')}');
    print('${car.substring(2, 6)}');
    print('${car.indexOf('o')}');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isBackground ? Colors.red : Colors.green,
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                sayHello();
              },
              child: Text('Press'),
            ),
            ElevatedButton(
              onPressed: () {
                showName('Nariste');
                showName('Aelina');
              },
              child: Text('Name'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showData('Aelina', 'Karymshakova');
                showData('Malina', 'Klubnikovna');
              },
              child: Text('Surname'),
            ),
            ElevatedButton(
              onPressed: () {
                showGoods(price: 400, name: 'phone');
              },
              child: Text('Show Product'),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                IconButton(
                  onPressed: like,
                  icon: isLike
                      ? Icon(
                          Icons.favorite,
                          color: Colors.orange,
                        )
                      : Icon(Icons.favorite_border),
                ),
                InkWell(
                  onDoubleTap: () {
                    changeColor();
                  },
                  child: Container(
                    height: isColor ? 100 : 200,
                    width: isColor ? 300 : 200,
                    color: isColor ? Colors.deepPurpleAccent : Colors.orange,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                changeBackground();
              },
              child: Text('Nana'),
            ),
            TextButton(
              onPressed: () {
                stringMetod();
              },
              child: Text(
                'String',
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
            )
          ],
        ),
      ),
    );
  }
}
