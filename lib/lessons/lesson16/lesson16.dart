import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int age = 13;
String name = 'Adelina';
bool isAdult = true;
double weight = 62.5;

void sayPrivet() {
  print('Privet');
}

void getUserName(String name) {
  print('Privet $name');
}

void getUserName2([String name = 'aelina']) {
  print('Privet $name');
}

Widget conteiner({required Color color, required String text}) {
  return Container(
    height: 200,
    width: 200,
    decoration: BoxDecoration(color: color),
    child: true ? Icon(Icons.access_time) : Icon(Icons.access_time_filled),
  );
}

List<String> fruits = ['apple', 'grusha', 'banan'];
List<int> numbres = [12, 34, 56];

List<Icon> icon = [
  Icon(Icons.access_alarm_sharp),
  Icon(Icons.account_circle),
  Icon(Icons.access_time_filled_outlined),
];

Map<String, dynamic> books = {
  'name': '100 let  odinochestva',
  'price': 200,
  'weight': 1.5,
};

void goHome() {
  if (18 == true) {
    print('');
  } else if (false) {
  } else {}
}

class Car {
  final String brand;
  final double volume;
  final bool? isAutomatic;
  final List<String> parameters;
  final Map<String, dynamic> zapchasti;

  Car(
      {required this.brand,
      required this.volume,
      this.isAutomatic,
      required this.parameters,
      required this.zapchasti});
}

class Bus extends Car {
  Bus(
      {required super.brand,
      required super.volume,
      required super.parameters,
      required super.zapchasti});
}

abstract class Animal {
  final String name;
  final bool isPredator;

  Animal({required this.name, required this.isPredator});

  void makeSound();
}

class Dog extends Animal {
  final int age;

  Dog({required super.name, required super.isPredator, required this.age});

  @override
  void makeSound() {
    print('gav gav');
  }
}

class Cat extends Animal {
  Cat({required super.name, required super.isPredator});

  @override
  void makeSound() {
    print('miao');
  }
}
List<String> names = [''];

void listMethod(){
  names.length;
  names.add('lalal');
}
class List2{
  final int length;
  final bool isEmpty;
  final bool isNotEmpty;

  List2({required this.length, required this.isEmpty, required this.isNotEmpty});
  void add(String value){}

}
List2 names2 = List2(length: 7, isEmpty: false, isNotEmpty: true);

void list2(){
  names2.add('');
  names2.length;
  names2.isEmpty;
  names2.isNotEmpty;
}

abstract class AuthRepositories{
  void login();
  void signUp();
  void restorePassword();
  void logOut();
}
class AuthRepositoriesImpl extends AuthRepositories{
  @override
  void logOut() {
    // TODO: implement logOut
  }

  @override
  void login() {
    // TODO: implement login
  }

  @override
  void restorePassword() {
    // TODO: implement restorePassword
  }

  @override
  void signUp() {
    // TODO: implement signUp
  }

}

abstract class CarRepositories{
  void keys();
  void conditioner();
  void turner();
  void transmission();
}
class CarRepositoriesImpl extends CarRepositories{
  @override
  void conditioner() {
    print('vkluchi conder');
  }

  @override
  void keys() {
    print('vkluchi zajiganie');
  }

  @override
  void transmission() {
    print('vkluchi 1 peredachu');
  }

  @override
  void turner() {
    print('turn right');
  }

}