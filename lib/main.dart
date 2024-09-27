import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/screens/cart_provider.dart';
import 'package:untitled1/screens/cart_screen.dart';
import 'package:untitled1/screens/first_screen.dart';
import 'package:untitled1/screens/welcome_screen.dart';
import 'package:untitled1/screens/product_list_screen.dart';
import 'core/app_assets.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/loadSplash',
        routes: {
          '/loadSplash' : (context) =>  WelcomeScreen(),
          '/productList' : (context) =>  ProductListScreen(),
          '/cartScreen' : (context) =>  CartScreen(),
          '/firstScreen' : (context) =>  FirstScreen(),

        },
      ),
    );
  }
}


