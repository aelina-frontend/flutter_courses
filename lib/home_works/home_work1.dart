import 'package:flutter/material.dart';

class HomeWork1 extends StatefulWidget {
  const HomeWork1({super.key});

  @override
  State<HomeWork1> createState() => _HomeWork1State();
}

class _HomeWork1State extends State<HomeWork1> {
  final TextEditingController _lengthController = TextEditingController();
  final TextEditingController _widthController = TextEditingController();
  String name = 'Matilda';
  int counter = 0;
  Widget icon = Icon(Icons.add_circle_outline);
  Widget icon2 = Icon(Icons.remove_circle_outline);

  int age = 0;
  String result = '';

  void checkAge() {
    setState(() {
      result = age >= 18 ? 'Взрослый' : 'Подросток';
    });
  }

  double _result = 0;

  double calculateArea(double length, double width) {
    return length * width;
  }

  void _calculate() {
    double length = double.parse(_lengthController.text);
    double width = double.parse(_widthController.text);
    setState(() {
      _result = calculateArea(length, width);
    });
  }

  int score = 0;
  String result2 = '';

  void resultExam() {
    setState(() {
      result2 = score >= 50 ? 'Сдан' : 'Не сдан';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  icon: icon2,
                ),
                Text(
                  '$counter',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  icon: icon,
                ),
              ],
            ),
            Text('Name: $name'),
            TextButton(
              onPressed: () {
                setState(() {
                  name = 'Meerim';
                });
              },
              child: Text('Meerim'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  name = 'AIGERIM';
                });
              },
              child: Text('AIGERIM'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  name = 'Janybek';
                });
              },
              child: Text('Janybek'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      name = name.toUpperCase();
                    });
                  },
                  child: Text(
                    'toUpperCase',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      name = name.toLowerCase();
                    });
                  },
                  child: Text(
                    'toLowerCase',
                    style: TextStyle(color: Colors.cyan),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    age = int.tryParse(value) ?? 0;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Введите ваш возраст',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkAge,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'Проверить',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Text(result),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _lengthController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Длина',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _widthController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Ширина',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _calculate,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: Text(
                'Площадь: $_result',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    score = int.tryParse(value) ?? 0;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Введите вашу оценку',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: resultExam,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
              ),
              child: Text(
                'Проверить',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Text(result2),
          ],
        ),
      ),
    );
  }
}
