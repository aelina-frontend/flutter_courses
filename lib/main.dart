import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson2/lesson_func_screen.dart';
import 'package:untitled1/screens/detail_screen.dart';
import 'package:untitled1/screens/welcome_screen.dart';
import 'lessons/lesson1/lesson1.dart';


import 'package:device_preview/device_preview.dart';

import 'lessons/lesson3/lesson_func2.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      darkTheme: ThemeData.dark(),
      home: DetailScreen(),
    );
  }
}


// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => Cart(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         initialRoute: '/lesson1',
//         // initialRoute: '/loadSplash',
//         routes: {
//           '/loadSplash': (context) => WelcomeScreen(),
//           '/productList': (context) => ProductListScreen(),
//           '/cartScreen': (context) => CartScreen(),
//           '/firstScreen': (context) => FirstScreen(),
//           '/carInformation': (context) => CarInformation(),
//           '/authScreen': (context) => AuthScreen(false, true),
//           '/searchScreen': (context) => SearchScreen(),
//           '/paymentMethodsScreen': (context) => PaymentMethodsScreen(),
//           '/creditCard': (context) => CreditCard(),
//           '/paymendMade': (context) => PaymendMade(),
//           '/infoPage': (context) => InfoPage(),
//           '/myProfil': (context) => MyProfil(),
//           '/test': (context) => Test(),
//           '/lesson1': (context) => Lesson1(),
//
//         },
//       ),
//     );
//   }
// }





