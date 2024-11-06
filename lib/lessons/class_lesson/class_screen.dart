import 'package:flutter/material.dart';

int age = 22;
bool isAdult = true;
String name = 'Natasha';
double weight = 2.5;

void sayHello() {
  print('Salam');
}

bool isLike = false;

void ageUser() {
  if (false) {
    print('vsroslyi');
  } else if (true) {
    print('podrostok');
  } else {
    print('mladenez');
  }
  isLike ? 'hello' : 'poka';
}

List<String> productName = ['pen', 'pencil', 'book'];
List<int> productPrice = [12, 34, 54];
List<Widget> screen = [
  Text('dress'),
  Icon(Icons.account_circle_outlined),
  ElevatedButton(onPressed: () {}, child: Text('press'))
];
List<double> kg = [2.4, 5.3, 7.9];

Map<String, dynamic> car = {
  'name': 'BMW',
  'price': 20000,
  'inStrock': true,
  'weight': 3.5,
  'color': Colors.orange
};
List<Map<String, dynamic>> rabotniki = [
  {
    'name': 'Aleks',
    'age': 50,
    'zarplata': 20000,
    'profesion': 'buhgalter',
    'exp': 2.6,
  },
  {
    'name': 'Malika',
    'age': 40,
    'zarplata': 40000,
    'profesion': 'manager',
    'exp': 4,
  },
  {
    'name': 'Ivan',
    'age': 30,
    'zarplata': 25000,
    'profesion': 'driver',
    'exp': 5,
  }
];

void addProduct() {
  productName.isEmpty;
  productName.contains('name');
}

//#1
class Car {
  final String brand;
  final double volume;
  final String transmission; // коробка передач
  final bool hasInsurance;
  final Color colorOfCar;

  Car(
      {required this.brand,
      required this.volume,
      required this.transmission,
      required this.hasInsurance,
      required this.colorOfCar});
}

Car mersedes = Car(
    brand: 'Mersedes',
    volume: 3.0,
    transmission: 'automatic',
    hasInsurance: true,
    colorOfCar: Colors.indigo);
Car lada = Car(
    brand: 'Lada',
    volume: 1.6,
    transmission: 'manual',
    hasInsurance: false,
    colorOfCar: Colors.blueGrey);

List<Car> chineseCarsBrand = [
  Car(
      brand: 'Geely Monjaro',
      volume: 2.2,
      transmission: 'automatic',
      hasInsurance: true,
      colorOfCar: Colors.lightBlue),
  Car(
      brand: 'Changan UNIK',
      volume: 2.0,
      transmission: 'automatic',
      hasInsurance: false,
      colorOfCar: Colors.grey),
];

//#2
class House {
  final String houseCategory;
  final int rooms;
  final bool hasRenivation; //есть ли ремонт?
  final double squareMeter;

  House(
      {required this.houseCategory,
      required this.rooms,
      required this.hasRenivation,
      required this.squareMeter}); //квадрадный метраж
}

House apartment = House(
    houseCategory: 'Apartment',
    rooms: 2,
    hasRenivation: false,
    squareMeter: 67.5);
House privateHouse = House(
    houseCategory: 'Private House',
    rooms: 6,
    hasRenivation: true,
    squareMeter: 105.9);
List<House> building = [
  House(
      houseCategory: 'Office building',
      rooms: 10,
      hasRenivation: false,
      squareMeter: 200.0),
  House(
      houseCategory: 'Elite Apartment',
      rooms: 4,
      hasRenivation: true,
      squareMeter: 96.6),
];

//#3
class Animal {
  final String breed; // порода животных
  final int age;
  final String classifications;
  final bool isPredator;

  Animal(
      {required this.breed, //порода
      required this.age,
      required this.classifications, // млекопитающие Mammals, Reptiles, Birds, Fish
      required this.isPredator}); //хищник?
}

Animal bear = Animal(
    breed: 'white bear', age: 2, classifications: 'Mammals', isPredator: true);
Animal salmon =
    Animal(breed: 'Salmon', age: 1, classifications: 'Fish', isPredator: false);
Animal snake = Animal(
    breed: 'Royal python',
    age: 3,
    classifications: 'Reptilies',
    isPredator: true);

List<Animal> birds = [
  Animal(
      breed: 'Black Crow',
      age: 10,
      classifications: 'Birds',
      isPredator: false),
  Animal(breed: 'Pigeon', age: 1, classifications: 'Birds', isPredator: false),
];

//#4
class Student {
  final String name;
  final int age;
  final double course;
  final bool hasPaidForCourse;
  final String faculty;

  Student(
      {required this.name,
      required this.age,
      required this.course,
      required this.hasPaidForCourse,
      required this.faculty});
}

Student bakai = Student(
    name: 'Bakai',
    age: 20,
    course: 3.5,
    hasPaidForCourse: false,
    faculty: 'management');
Student evelina = Student(
    name: 'Evelina',
    age: 18,
    course: 2,
    hasPaidForCourse: true,
    faculty: 'low');

List<Student> firsteCourse = [
  Student(
      name: 'Natasha',
      age: 17,
      course: 1.5,
      hasPaidForCourse: false,
      faculty: 'foreign language'),
  Student(
      name: 'Karina',
      age: 18,
      course: 1.0,
      hasPaidForCourse: true,
      faculty: 'finance'),
  Student(
      name: 'Yu Liang',
      age: 19,
      course: 1.8,
      hasPaidForCourse: false,
      faculty: 'programming'),
];

//#5
class Bag {
  final String brand;
  final int count;
  final double weight;
  final Color bagColor;
  final bool isExpensive;

  Bag(
      {required this.brand,
      required this.count,
      required this.weight,
      required this.bagColor,
      required this.isExpensive});
}

Bag chanel = Bag(
    brand: 'chanel',
    count: 1,
    weight: 1.5,
    bagColor: Colors.black,
    isExpensive: true);
Bag isabelQueen = Bag(
    brand: 'Isabella Queen',
    count: 3,
    weight: 4,
    bagColor: Colors.green,
    isExpensive: true);

List<Bag> luxuryBarg = [
  Bag(
      brand: 'Jargin of London',
      count: 5,
      weight: 5.6,
      bagColor: Colors.red,
      isExpensive: true),
  Bag(
      brand: 'guchy',
      count: 2,
      weight: 2.9,
      bagColor: Colors.cyanAccent,
      isExpensive: false),
  Bag(
      brand: 'H&M',
      count: 1,
      weight: 0.8,
      bagColor: Colors.purple,
      isExpensive: false),
];

class Person {
  final String name;
  final int age;
  final double weight;
  final bool isMerried;
  final Color hair;

  Person(
      {required this.name,
      required this.age,
      required this.weight,
      required this.isMerried,
      required this.hair});
}

Person aelina = Person(
    name: 'Aelina', age: 30, weight: 67, isMerried: true, hair: Colors.brown);
Person dariya = Person(
    name: 'Dariya', age: 4, weight: 15.3, isMerried: false, hair: Colors.brown);

List<Person> people = [
  Person(
      name: 'Alisa',
      age: 23,
      weight: 60.4,
      isMerried: true,
      hair: Colors.yellow),
  Person(
      name: 'Aidar',
      age: 33,
      weight: 80.5,
      isMerried: false,
      hair: Colors.black),
];

class ElevatedButtonWidget {
  final Function() onPressed;
  final Widget child;

  ElevatedButtonWidget({required this.onPressed, required this.child});
}

ElevatedButtonWidget button =
    ElevatedButtonWidget(onPressed: () {}, child: Icon(Icons.add));
ElevatedButton button1 = ElevatedButton(
    onPressed: () {},
    child: Column(
      children: [],
    ));

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [Text('add to cart'), Icon(Icons.shopping_cart)],
                )),
          ],
        ),
      ),
    );
  }
}
