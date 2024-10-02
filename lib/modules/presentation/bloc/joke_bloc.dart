import 'package:flutter/material.dart';
import 'package:untitled1/modules/presentation/bloc/joke_state.dart';

import 'joke_event.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState>{
  final FetchJokeUseCase fetchJokeUseCase;
  JokeBloc(required this.fetchJokeUseCase) : super (JokeInitState()){

    on<FetchJokeEvent>(event,emit) async{
      emit(JokeLoadingState());
      try{
      final result = await fetchJokeUseCase.fetchJoke();
      emit(JokeSuccessState());
  } catch (e) {
    emit(JokeErrorState());
  }
}
}