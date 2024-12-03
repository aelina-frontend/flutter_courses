import 'package:flutter/material.dart';

class Student {
  final String name;
  final int course;
  final String? selfPructice;

  Student({required this.name, this.course = 1, this.selfPructice});
}

class Person {
  final String name;
  final int? age;
  final bool isMerried;
  final List<String> favoriteFoods;
  final Map<String, dynamic> address;

  Person(
      {required this.name,
      this.age,
      this.isMerried = false,
      required this.favoriteFoods,
      required this.address});
}

Person aelina = Person(name: 'Aelina', isMerried: true, favoriteFoods: [
  'chinese food',
  'turkish food'
], address: {
  'street': 'Koibagarova',
  'house': 22,
});

class Child {
  final String name;
  final int? age;
  final bool isSchool;
  final List<String> favoriteCartoons;
  final Map<int, dynamic> favoriteToys;
  final Parents parents;

  Child(
      {required this.name,
      this.age,
      this.isSchool = false,
      required this.favoriteCartoons,
      required this.favoriteToys,
      required this.parents});
}

class Parents {
  final String motherName;
  final String fatherName;

  Parents({required this.motherName, required this.fatherName});
}

List<Child> children = [
  Child(
    name: 'Nariste',
    favoriteCartoons: ['Ben and Holly'],
    favoriteToys: {0: 'horse', 1: 'cars', 2: 'dolls'},
    parents: Parents(motherName: 'Lana', fatherName: 'David'),
  ),
  Child(
    name: 'Bakai',
    age: 9,
    isSchool: true,
    favoriteCartoons: ['Robots'],
    favoriteToys: {0: 'horse', 1: 'cars', 2: 'dolls'},
    parents: Parents(motherName: 'Marina', fatherName: 'Evgeniy'),
  ),
];
List<Parents> schoolParents = [
  Parents(motherName: 'Meerim', fatherName: 'Maksat'),
  Parents(motherName: 'Katya', fatherName: 'Maks'),
];

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: schoolParents.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ClassLesson2(
                        parents: schoolParents[index],
                        name: 'Askar',
                        age: 10,
                        isMerried: false,
                        favoriteFood: ['Chinese food', 'plov'],
                        address: {'city': 'Bishkek', 'street': 'Manas'})),
              );
            },
            title: Text(
              schoolParents[index].motherName,
            ),
            subtitle: Text(schoolParents[index].fatherName),
          );
        },
      ),
    );
  }
}

class ClassLesson2 extends StatelessWidget {
  final Parents parents;
  final String name;
  final int age;
  final bool isMerried;
  final List<String> favoriteFood;
  final Map<String, dynamic> address;

  const ClassLesson2(
      {super.key,
      required this.parents,
      required this.name,
      required this.age,
      required this.isMerried,
      required this.favoriteFood,
      required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(parents.fatherName),
            Text(parents.motherName),
            Text(name),
            Text('age:$age')
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final int price;
  final String description;

  Product({required this.name, required this.price, required this.description});
}

List<Product> product = [
  Product(name: 'rice', price: 150, description: 'write'),
  Product(name: 'grechka', price: 200, description: 'brown'),
];

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: product.length,
          itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        DetaleScreen(product: product[index])));
          },
          title: Text(product[index].name),
        );
      }),
    );
  }
}

class DetaleScreen extends StatelessWidget {
  final Product product;

  const DetaleScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(product.name),
            Text('${product.price}'),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}
