import 'dart:convert';

import 'package:untitled1/modules/data/model/joke_model.dart';
import '../../domain/entity/joke_entity.dart';
import '../mapper/joke_mapper.dart';
import '../model/joke_model.dart';
import '../model/joke_model.dart';
import '../model/joke_model.dart';
import 'joke_repository.dart';
import 'package:dio/dio.dart';

class JokeRepositoryImpl implements JokeRepository{
  final Dio dio;
  final JokeMapper mapper = JokeMapper();

  JokeRepositoryImpl({
    required this.dio
    required this.mapper,
  });

  @override
  Future<JokeEntity> fetchJoke() async{
  final result = await dio.get('https://icanhazdadjoke.com/',
  options: Options(headers: {'Accept': 'application/json'}));
  final model = JokeModel.fromJson(result.data);
  return mapper.mapJoke(model: model);
}

  // @override
  // Future<JokeEntity> fetchJoke() async{
  //   String joke = '';
  // }
  //   do {
  // final result = await dio.get('https://icanhazdadjoke.com/',
  // options: Options(headers: {'Accept': 'application/json'}));
  // final model = JokeModel.fromJson(result.data);
  // } while(jokeModel.joke?.contains('?') ?? false);
  //   return mapper.mapModel(model: jokeModel);
  // }


