import 'package:untitled1/modules/domain/entity/joke_entity.dart';

import '../model/joke_model.dart';

abstract class JokeRepository{
  Future<JokeEntity> fetchJoke();
}