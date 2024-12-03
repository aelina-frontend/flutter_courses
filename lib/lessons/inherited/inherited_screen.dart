import 'package:flutter/material.dart';
import 'package:untitled1/lessons/class_lesson/class_screen.dart';

class Person {
  final String name;
  final String surname;
  final int? age;
  final bool isAdult;

  Person({
    required this.name,
    required this.surname,
    this.age,
    this.isAdult = false,
  });
}

class Student extends Person {
  final int course;
  final List<String> subject;

  Student(
      {required super.name,
      required super.surname,
      required super.age,
      required super.isAdult,
      required this.subject,
      required this.course});
}

Person aelina = Person(name: 'Aelina', surname: 'Karymshakova');
Student bekten = Student(
  name: 'Bekten',
  surname: 'Bakaibekov',
  subject: ['math', 'foreign language'],
  course: 2,
  age: 20,
  isAdult: true,
);

class Worker extends Person {
  final double experience;
  final double salary;

  Worker(
      {required super.name,
      required super.surname,
      super.isAdult,
      required this.salary,
      required this.experience});
}

Worker manager = Worker(
  name: 'Larisa',
  surname: 'Meridianova',
  salary: 2000,
  experience: 15,
);

class InheritedScreen extends StatelessWidget {
  final String name;
  final int age;
  final bool isAdult;
  final double kg;
  final List<String> children;
  final Map<String, dynamic> address;
  final Person person;

  const InheritedScreen(
      {super.key,
      required this.name,
      required this.age,
      required this.isAdult,
      required this.kg,
      required this.children,
      required this.address, 
        required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(name),
            Text('${age}'),
            Text('${isAdult}'),
            Text('${kg}'),
            Text(children[1]),
            Text(address['street']),
            Text('street ${address['street']}'),
            Text(person.name),
            Text(person.surname)
          ],
        ),
      ),
    );
  }
}
