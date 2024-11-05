import 'package:flutter/material.dart';

class HomeWork2 extends StatefulWidget {
  const HomeWork2({super.key});

  @override
  State<HomeWork2> createState() => _HomeWork2State();
}

class _HomeWork2State extends State<HomeWork2> {
  List<int> shoesSize = [30, 31, 32, 34, 36];

  void checkSize() {
    print('$shoesSize');
    shoesSize.remove(32); //delete
    print('$shoesSize');
    shoesSize.removeAt(0); //delete element
    print('$shoesSize');
    shoesSize.removeLast(); //delete last one
    print('$shoesSize');
    shoesSize.removeWhere((shoes) => shoes < 34); //delete menshe 34
    print('$shoesSize');
    shoesSize.clear(); // delete ves spisok
    print('$shoesSize');
    shoesSize.add(45); //add
    print('$shoesSize');
    shoesSize.addAll([13, 20, 33, 42]); //add several element
    print('$shoesSize');
    print(shoesSize.contains(22)); //проверяет есть ли 22 в списке
    print(shoesSize.indexOf(3)); //-1 не найден такой элемент
    print(shoesSize.indexOf(20)); // 2
    print(shoesSize.lastIndexOf(13, 20));
    shoesSize.shuffle(); //перемешать список в случайном порядке
    print(shoesSize);
    shoesSize.sort(((a, b) => b.compareTo(a))); //сортировать по убыванию
    print(shoesSize);
  }

  List<String> fruits = ['apples', 'orange', 'banana'];

  void fruitMap() {
    print(fruits);
    fruits.asMap();
    print(fruits);
    fruits.insert(0, 'mango'); //индекс, какой по счету, и дбавляем элемент
    print(fruits);
    fruits.insertAll(fruits.length,['pear', 'raspberry']); // добавляет элементы в длину
    print(fruits);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  checkSize();
                },
                child: Text('size'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  fruitMap();
                },
                child: Text('fruits'),
              ),
              // SizedBox(height: 20),
              // Text('$fruits'),
            ],
          ),
        ),
      ),
    );
  }
}
