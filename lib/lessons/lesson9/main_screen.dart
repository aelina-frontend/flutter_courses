import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson9/add_screen.dart';
import 'package:untitled1/lessons/lesson9/admin_screen.dart';
import 'package:untitled1/lessons/lesson9/product_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;
  List<Widget> screens = [
    ProductScreen(),
    AdminScreen(),
    AddScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'product',),
          BottomNavigationBarItem(icon: Icon(Icons.admin_panel_settings), label: 'admin',),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'add product',),
        ],
      ),

    );
  }
}
