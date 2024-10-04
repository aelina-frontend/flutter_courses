import 'package:untitled1/modules/domain/entity/joke_entity.dart';
import '../model/joke_model.dart';

class JokeMapper{
  JokeEntity mapModel({required JokeModel model}){
    return JokeEntity(
      id: model.id,
      joke: model.joke,
      status: model.status?.toString(),);
  }
}