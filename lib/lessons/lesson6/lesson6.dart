import 'package:flutter/material.dart';

class Lesson6 extends StatefulWidget {
  const Lesson6({super.key});

  @override
  State<Lesson6> createState() => _Lesson6State();
}

class _Lesson6State extends State<Lesson6> {
  String name = 'Dariya';
  int age = 14;
  double number = 2.5;
  bool isSunnny = true;
  int counter = 0;
  bool isLike = false;

  void decrement(){
    setState(() {
      counter--;
    });
  }
  void increment(){
    setState(() {
      counter++;
    });
  }

  void like(){
    setState(() {
      isLike = !isLike;
    });
  }

  void func1(int a, int b){
    print('$a, $b');
  }

  void func2(String name, String surName){
    print('$name, $surName');
  }

  String func3({required String name, required String surName, int? course, String subject = 'kyrgyz'}){
    return '$name, $surName, $course, $subject';

  }

  void checkAge({int age = 20}){
    if(age >= 21){
      print('Вы совершенолетний');
    }else if(age >= 17 && age <= 21){
      print('ты студент');
    }else{
      print('ты школьник');
    };
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('$counter',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  increment();
                }, child: Text('+')),
                ElevatedButton(onPressed: (){
                  decrement();
                }, child: Text('-')),
                IconButton(onPressed: (){
                  like();
                }, icon: isLike ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_border)),
                ElevatedButton(onPressed: (){
                  func1(3, 6);
                  func2('Bibi', 'Aelina');
                }, child: Text('press')),

              ],
            ),
            Text(func3(name: 'Aliya', surName: 'Mahmudova', subject: 'russian')),

          ],
        ),
      ),
    );
  }
}
