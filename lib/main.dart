import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/home_works/home_work18/presentation/screens/hw_home_screen.dart';
import 'package:untitled1/lessons/inherited/inhereted_example.dart';
import 'package:untitled1/lessons/inherited/inherited_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:untitled1/lessons/lesson17/presentation/screens/product_screen.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/card_screen.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/detaile_screen.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/home_screen.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/main_screen.dart';


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
        scaffoldBackgroundColor: AppColors.whiteColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      darkTheme: ThemeData.dark(),
      home: MainScreen()
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
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//        home: ProductScreen(),
//
//       );
//   }
// }
