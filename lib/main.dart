import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/auth/auth_screen.dart';
import 'package:untitled1/screens/car_information.dart';
import 'package:untitled1/screens/cart_provider.dart';
import 'package:untitled1/screens/cart_screen.dart';
import 'package:untitled1/screens/credit_card.dart';
import 'package:untitled1/screens/first_screen.dart';
import 'package:untitled1/screens/info_page.dart';
import 'package:untitled1/screens/my_profil.dart';
import 'package:untitled1/screens/payment_methods_screen.dart';
import 'package:untitled1/screens/paymend_made.dart';
import 'package:untitled1/screens/search_screen.dart';
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
          '/loadSplash': (context) => WelcomeScreen(),
          '/productList': (context) => ProductListScreen(),
          '/cartScreen': (context) => CartScreen(),
          '/firstScreen': (context) => FirstScreen(),
          '/carInformation': (context) => CarInformation(),
          '/authScreen': (context) => AuthScreen(false, true),
          '/searchScreen': (context) => SearchScreen(),
          '/paymentMethodsScreen': (context) => PaymentMethodsScreen(),
          '/creditCard': (context) => CreditCard(),
          '/paymendMade': (context) => PaymendMade(),
          '/infoPage': (context) => InfoPage(),
          '/myProfil': (context) => MyProfil(),

        },
      ),
    );
  }
}





