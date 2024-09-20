import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/home_screen.dart';
import 'package:untitled1/screens/welcome_screen.dart';
import 'package:untitled1/test/screen_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled1/test/provider/greeting_provider.dart';
import 'core/app_assets.dart';

void main() {

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(1000),
      )
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({
//     super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  ChangeNotifierProvider(
//       create: (context) => GreetingProvider(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: ScreenOne(),
//       ),
//     );
//   }
// }
