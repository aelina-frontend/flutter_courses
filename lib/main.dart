import 'package:flutter/material.dart';
import 'package:untitled1/screens/welcome_screen.dart';
import 'core/app_assets.dart';
// import 'package:untitled1/user_screen.dart';

final lightTheme = ThemeData.dark(useMaterial3: true);
final darkTheme = ThemeData.light(useMaterial3: true);

ValueNotifier<bool> isDarkMode = ValueNotifier<bool>(false);

const userName = 'Aelina@';
const password = 'flutter';


void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder( valueListenable: isDarkMode,
        builder: (context, darkMode, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
              home: Scaffold(
                body: WelcomeScreen(),
              )

          );
        }
    ) ;

  }
}


