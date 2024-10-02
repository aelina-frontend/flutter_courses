import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/modules/data/repository/joke_repository_impl.dart';

import '../data/model/joke.dart';

class JokeScreen extends StatefulWidget {
  const JokeScreen({super.key});

  @override
  State<JokeScreen> createState() => _JokeScreenState();
}

class _JokeScreenState extends State<JokeScreen> {
String result = 'no joke';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Joke Screen'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(result,style: const TextStyle(fontSize: 20,fontFamily: 'Hind',fontWeight: FontWeight.w400),),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () async{
                  final joke = await JokeRepositoryImpl(dio: Dio()).fetchJoke();
                  result = joke.joke ?? '';
                  setState(() {});
                },
                child: const Text('Fetch Joke',style: TextStyle(fontSize: 18,fontFamily: 'Hind',fontWeight: FontWeight.w400),))
          ]
        ),
      ),

    );
  }
}
