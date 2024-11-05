import 'package:flutter/material.dart';

class ListLesson extends StatefulWidget {
  const ListLesson({super.key});

  @override
  State<ListLesson> createState() => _ListLessonState();
}

class _ListLessonState extends State<ListLesson> {
  List<String> names = ['Aelina', 'Bermet', 'Daniil'];
  List<int> numbers = [12, 34, 45];
  List<double> weigths = [45.6, 76.4, 67];
  List<bool> isMarried = [true, false, true];

  List<Widget> childrenOne = [
    Icon(Icons.account_circle_outlined),
    ElevatedButton(onPressed: () {}, child: Text('has child')),
    Text('hello'),
    Container(width: 50,height: 50,color: Colors.lightGreenAccent,)
  ];
  List<String> shkaf = ['dress 1', 'dress 2', 'dress 3'];

  List<int> ageUser = [18, 15, 13, 25, 57, 30, 40, 12, 10, 42, 68];
  void methodList(){
    print('${shkaf.length}');
    print('$shkaf');
    shkaf.add('platya 8');
    print('$shkaf');
    shkaf.remove('dress 1');
    print('$shkaf');
    shkaf.removeAt(0);
    print('$shkaf');
  }
  void deleteUser(){
    print(ageUser);
    ageUser.removeWhere((data) => data < 18);
    print(ageUser);
  }
  List<String> books = ['first teacher', 'Jack London', '100 let odinochestvo', 'finansist', 'Jamilya'];

  String findBook = '';

  void search(){
    print(books);
    findBook = books.firstWhere((book) => book == 'Jack London');
    print(findBook);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(names[0]),
            Text(names[1]),
            Text(names[2]),
            Text('${numbers[0]}'),
            Text('${numbers[1]}'),
            Text('${shkaf[2]}'),
            ElevatedButton(onPressed: (){
              methodList();
            }, child: Text('method')),
            ElevatedButton(onPressed: (){
              deleteUser();
            }, child: Text('age')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              search();
            }, child: Text('books')),
          ],
        ),
      ),
    );
  }
}
