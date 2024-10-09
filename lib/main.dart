import 'package:flutter/foundation.dart';
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
import 'package:untitled1/screens/test.dart';
import 'package:untitled1/screens/welcome_screen.dart';
import 'package:untitled1/screens/product_list_screen.dart';
import 'core/app_assets.dart';
import 'lessons/lesson1/lesson1.dart';


import 'package:device_preview/device_preview.dart';

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
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Test(),
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





