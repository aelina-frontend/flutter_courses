import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/modules/data/repository/joke_repository_impl.dart';
import 'package:untitled1/modules/presentation/bloc/joke_state.dart';
import '../data/model/joke_model.dart';
import 'bloc/joke_bloc.dart';
import 'bloc/joke_event.dart';

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
            BlocBuilder<JokeBloc,JokeState>(
              builder: (context, state) {
                if(state is JokeLoadingState){
                  return const CircularProgressIndicator();
                } else if(state is JokeSuccessState){
                  return Text(state.joke.joke ?? '');
                }
                else{
                  return const Text('bloc: no joke');
                }
              },
            ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text(result,style: const TextStyle(fontSize: 20,fontFamily: 'Hind',fontWeight: FontWeight.w400),),
            // ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () async{
                  context.read<JokeBloc>().add(FetchJokeEvent());
                  // final joke = await JokeRepositoryImpl(dio: Dio()).fetchJoke();
                  // result = joke.joke ?? '';
                  // setState(() {});
                },
                child: const Text('Fetch Joke',style: TextStyle(fontSize: 18,fontFamily: 'Hind',fontWeight: FontWeight.w400),))
          ]
        ),
      ),

    );
  }
}
