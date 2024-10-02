import 'dart:convert';

import 'package:untitled1/modules/data/model/joke.dart';
import '../model/joke.dart';
import 'joke_repository.dart';
import 'package:dio/dio.dart';

class JokeRepositoryImpl implements JokeRepository{
  final Dio dio;

  JokeRepositoryImpl({
    required this.dio
  });

  @override
  Future<Joke> fetchJoke() async{
    final result = await dio.get('https://icanhazdadjoke.com/', options: Options(
      headers: {'Accept': 'application/json'},
    ));
    // Map<String, dynamic> data = jsonDecode(result.data);
    // print(data.runtimeType.toString());
    return Joke.fromJson(result.data);
  }

}

