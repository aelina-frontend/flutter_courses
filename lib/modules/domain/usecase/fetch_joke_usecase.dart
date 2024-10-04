import 'package:untitled1/modules/data/model/joke_model.dart';
import 'package:untitled1/modules/data/repository/joke_repository.dart';

import '../entity/joke_entity.dart';

class FetchJokeUsecase{
  final JokeRepository repository;

  FetchJokeUsecase({required this.repository});

  Future<JokeEntity> fetchJoke() async{
    return await repository.fetchJoke();
  }
}