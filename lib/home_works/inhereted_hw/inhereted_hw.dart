import 'package:flutter/material.dart';

class Animal {
  final String name;
  final int? age;

  Animal({required this.name, this.age});
}

class Birds extends Animal {
  final Color wingsColor;
  final bool isFly;
  final List<String> birdSpecies; //виды птиц

  Birds(
      {required super.name,
      required super.age,
      required this.wingsColor,
      required this.isFly,
      required this.birdSpecies});
}

class Fish extends Animal {
  final Color fishColor;
  final bool isPredator;

  Fish(
      {required super.name,
      super.age,
      required this.fishColor,
      required this.isPredator});
}

List<Animal> birds = [
  Birds(
    name: 'попугай',
    wingsColor: Colors.orangeAccent,
    isFly: true,
    birdSpecies: ['какаду', 'Монах'],
    age: null,
  ),
  Birds(
      name: 'пингвин',
      age: 2,
      wingsColor: Colors.indigo,
      isFly: false,
      birdSpecies: ['королевские', 'африканский', 'антарктический'])
];

class Car {
  final String brand;
  final double volume;
  final bool isAutomatic;

  Car({required this.brand, required this.volume, this.isAutomatic = false});
}

class Bus extends Car {
  final double? weight;
  final int seatsCounter;

  Bus(
      {required super.brand,
      required super.volume,
      required this.seatsCounter,
      this.weight});
}

class Truck extends Car {
  final Map<String, dynamic> parameters;

  Truck(
      {required super.brand, required super.volume, required this.parameters});
}

List<Bus> bus = [
  Bus(brand: 'Logos', volume: 8.9, seatsCounter: 53),
  Bus(brand: 'Vektor next', volume: 7, seatsCounter: 25, weight: 10),
];

List<Truck> truck = [
  Truck(brand: 'Volvo', volume: 10.8, parameters: {
    'длина кузова': 13.6,
    'ширина': 2.45,
    'высота': 2.46,
    'объем': 82,
    'грузоплдъемность/тонн': 20,
  })
];

