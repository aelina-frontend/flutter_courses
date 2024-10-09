import 'package:flutter/material.dart';

class Lesson1 extends StatefulWidget {
  const Lesson1({super.key});

  @override
  State<Lesson1> createState() => _Lesson1State();
}

class _Lesson1State extends State<Lesson1> {
// TODO 4 Примитивные типы данных: String, int, double, bool;
//TODO Операторы ++ увеличивает на 1, -- уменьшает на 1
//TODO =, +,-, *, /,
//TODO методы и параметры

  String name = 'Lana';
  int age = 25;
  double height = 1.67;
  bool isMarried = true;
  double counter = 0;

  Color red = Colors.red;
  Color green = Colors.green;

  bool isChangeColor = false;
  bool isLike = false;

  String data = ' privet';
  Widget icon = Icon(Icons.add);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: data.isEmpty ? Center(child:Text('данные пустые')) :
        SafeArea(
          child: Column(
            children: [
              Text('Name: $name'),
              Text('Name: $name'),
              Text('Height: $height'),
              SizedBox(height: 20),
              Text('counter: $counter'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      child: Text('+')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      child: Text('-')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter = counter * 2;
                        });
                      },
                      child: Text('*')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter /= 2;
                        });
                      },
                      child: Text('/')),
                ],
              ),
              SizedBox(height: 20),
              Text('Name: $name'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        name = 'John';
                      });
                    },
                    child: Text('John'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        name = 'Smith';
                      });
                    },
                    child: Text('Smith'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        name = name.toLowerCase();
                      });
                    },
                    child: Text('toLowerCase'),
                  )
                ],
              ),
              SizedBox(height: 20),
              Text('${name.runtimeType}'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: isChangeColor ? 100 : 50,
                    width: isChangeColor ? 50 : 100,
                    color: isChangeColor ? red : green,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: red,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: red,
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isChangeColor = !isChangeColor;
                        });
                      },
                      child: Text('$isChangeColor')),
                ],
              ),
              SizedBox(height: 20),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isLike = !isLike;
                    });
                  },
                  icon: isLike
                      ? Icon(
                    Icons.favorite,
                    color: red,
                  )
                      : Icon(Icons.favorite_border)),
              SizedBox(height: 20),
              Text('${name.isEmpty}'),
            ],
          ),
        )
    );
  }
}
