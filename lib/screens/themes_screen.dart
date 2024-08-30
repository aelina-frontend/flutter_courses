import 'package:flutter/material.dart';

class  ThemesScreen extends StatefulWidget
{

  final lightTheme = ThemeData.light();
  final darkTheme = ThemeData.dark();

  @override
  State<ThemesScreen> createState() => _ThemesScreenState();
}

class _ThemesScreenState extends State<ThemesScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? widget.darkTheme : widget.lightTheme,
      home: Container(),//MyHomePage(),
    );
  }
}
