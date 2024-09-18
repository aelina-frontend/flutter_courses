import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GreetingProvider extends ChangeNotifier {

  final String greeting = 'hello, Aelina! from provider';
  int count = 5000000;

  void increase() {
    count = count + 100;

  }

  void decrease() {
    count = count - 100;

  }

}