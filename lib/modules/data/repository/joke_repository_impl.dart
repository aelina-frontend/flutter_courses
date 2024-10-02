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
  Future<JokeEntity> fetchJoke() async{
    String joke = '';
  }
    do {
  final result = await dio.get('https://icanhazdadjoke.com/',
  options: Options(
  headers: {'Accept': 'application/json'},
  ));
  final model = JokeModel.fromJson(result.data);
  } while(jokeModel.joke?.contains('?') ?? false);
    // Map<String, dynamic> data = jsonDecode(result.data);
    // print(data.runtimeType.toString());
    return mapper.mapModel(model: jokeModel);
  }

}

