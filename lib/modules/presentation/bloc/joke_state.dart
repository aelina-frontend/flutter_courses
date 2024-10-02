import 'package:flutter/material.dart';

abstract class JokeState{}

class JokeInitState extends JokeState{}

class JokeLoadingState extends JokeState{}

class JokeSuccessState extends JokeState{
  final JokeEntity joke;
  JokeSuccessState({required this.joke});
}

class JokeErrorState extends JokeState{}