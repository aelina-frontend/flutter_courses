import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/card_screen.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/favorite_screen.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/home_screen.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  List<Widget> screens = [
    HomeScreen(),
    ProfileScreen(),
    FavoriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.greyColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: '',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CardScreen(),
            ),
          );
        },
        backgroundColor: AppColors.greenColor,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
