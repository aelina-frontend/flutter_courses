


import '../model/joke.dart';

abstract class JokeRepository{
  Future<Joke> fetchJoke();
}