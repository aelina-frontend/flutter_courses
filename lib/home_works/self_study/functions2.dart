import 'package:flutter/material.dart';

class Functions2 extends StatefulWidget {
  const Functions2({super.key});

  @override
  State<Functions2> createState() => _Functions2State();
}

class _Functions2State extends State<Functions2> {
  void sayHello() {
    print('hello, nemo');
  }

  void showGreeting() {
    print('Hi, flutter');
  }

  void greetUsers(String name) {
    print('hello $name');
  }

  void greet([String name = 'friend']) {
    print('hello $name');
  }

  void orderCoffee(String type, [String size = 'middle']) {
    print('you ordered $size $type coffee');
  }

  void showMessage(String message) {
    print(message);
  }

  String getUsersName() {
    return 'Daniilchik';
  }

  String createWelcomeMessage(String name) {
    return 'Dobro pojalovat, $name';
  }

  int add(int a, int b) {
    return a + b;
  }

  int getStringLength(String text) {
    return text.length;
  }

  bool isEven(int number) {
    return number % 2 == 0;
  }

  bool isAdult(int age) {
    return age >= 18;
  }

  Widget buildHeader(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w700, color: Colors.blue),
    );
  }

  Widget buildButton(String label) {
    return ElevatedButton(
      onPressed: () {
        print('только нажали кнопку');
      },
      child: Text(label),
    );
  }

  @override
  Widget build(BuildContext context) {
    greetUsers('Aelina');
    greet();
    greet('Meverick');
    orderCoffee('capuchino');
    orderCoffee('latte', 'big');
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showMessage('knopka byla najata');
            },
            child: Text('press'),
          ),
          Text('Смотри консоль для приветствия'),
          Center(
            child: Text('privet, ${getUsersName()}!'),
          ),
          Center(child: Text(createWelcomeMessage('Karina'))),
          SizedBox(
            height: 20,
          ),
          Text('summa 3 i 5: ${add(3, 5)}'),
          SizedBox(
            height: 20,
          ),
          Text(
              "Длина строки 'Mariya Magdalena' : ${getStringLength('Mariya Magdalena')}"),
          SizedBox(
            height: 20,
          ),
          Text('Число 5 четное? ${isEven(5)}'),
          SizedBox(
            height: 20,
          ),
          Text('Возраст 20 лет: Совершеннолетний? ${isAdult(20)}'),
          SizedBox(
            height: 20,
          ),
          Center(
            child: buildHeader('Заголовок страницы'),
          ),
          SizedBox(height: 20,),
          Center(
            child: buildButton('Нажми меня'),
          )
        ],
      ),
    );
  }
}
