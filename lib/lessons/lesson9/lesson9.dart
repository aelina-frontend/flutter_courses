import 'package:flutter/material.dart';

class Lesson9 extends StatefulWidget {
  const Lesson9({super.key});

  @override
  State<Lesson9> createState() => _Lesson9State();
}

class _Lesson9State extends State<Lesson9> {
  int age = 30;
  String name = 'Malika';

  void checkAge() {
    if (age >= 18) {
    } else if (true) {}
  }

  List<int> numbers = [1, 2, 3, 4, 5];
  List<String> names = [
    'Aelina',
  ];

  Map<String, String> car = {'name': 'BMW', 'year': '2022'};
  Map<int, String> number = {0: '0', 2: '2'};
  Map<String, dynamic> person = {
    'name': 'Aelina',
    'surname': 'Karymshakova',
    'isMarried': true,
    'age': 25,
    'height': 1.67,
    'hairColors': Colors.brown,
    'icon': Icons.account_circle_outlined,
    'home': Container(
      height: 50,
      width: 50,
      color: Colors.indigo,
    ),
  };
  List<Map<String, dynamic>> products = [
    {
      'name': 'iphone15',
      'price': 1300,
      'categoria': 'electrpnics',
    },
    {
      'name': 'notebook',
      'price': 800,
      'categoria': 'electrpnics',
    },
    {
      'name': 'first teacher',
      'price': 5,
      'categoria': 'books',
    },
    {
      'name': 'hoodie',
      'price': 45,
      'categoria': 'clothes',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(person['name']),
              Text('${person['age']}'),
              Icon(person['icon']),
              person['home'],
              SizedBox(height: 20,),
              Text(products[0]['name'])
            ],
          ),
        ),
      ),
    );
  }
}
