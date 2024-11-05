import 'package:flutter/material.dart';

class HomeWork3 extends StatefulWidget {
  const HomeWork3({super.key});

  @override
  State<HomeWork3> createState() => _HomeWork3State();
}

class _HomeWork3State extends State<HomeWork3> {
  List<String> fruits = [
    'orange',
    'orange',
    'apple',
    'watermelon',
    'orange',
    'apple',
    'watermelon',
    'limon',
    'apple',
    'limon'
  ];
  Map<String, int> map = {};

  void fruitCount() {
    for (int i = 0; i < fruits.length; i++) {
      if (map.containsKey(fruits[i])) {
        map.update(fruits[i], (val) => map[fruits[i]]! + 1);
      } else {
        map[fruits[i]] = 1;
      }
    }
    print(map);
  }

  Map<String, int> studentsGrades = {
    'Malika': 76,
    'Selvia': 90,
    'Akbar': 70,
    'Michael': 85,
  };

  int getGrade(String studentName) {
    if (studentsGrades.containsKey(studentName)) {
      return studentsGrades[studentName]!;
    } else {
      return -1;
    }
  }

  void main() {
    String studentsToFind = 'Malika';
    int grade = getGrade(studentsToFind);

    if (grade >= 0) {
      print('Оценка $studentsToFind: $grade');
    } else {
      print('$studentsToFind не найден');
    }
  }

  Map<String, double> products = {
    'lapsha': 123,
    'makarony': 80,
    'maslo': 67.7,
    'grechka': 156.2,
  };

  void priceIncrease(String productName, double percentage) {
    if (products.containsKey(productName)) {
      double newPrice = products[productName]! * (1 + percentage / 100);
      products[productName] = newPrice;
      print('Новая цена $productName: $newPrice');
    } else {
      print('Товар  $productName не найден');
    }
  }

  void productPrice() {
    priceIncrease('lapsha', 10);
    print(products);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                fruitCount();
              },
              child: Text('fruits'),
            ),
            ElevatedButton(
              onPressed: () {
                main();
              },
              child: Text('score'),
            ),
            ElevatedButton(
              onPressed: () {
                productPrice();
              },
              child: Text('product'),
            ),
          ],
        ),
      ),
    );
  }
}
