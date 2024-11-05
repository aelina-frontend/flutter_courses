import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/home_works/home_work9/admin_burger_screen.dart';
import 'package:untitled1/home_works/home_work9/burger_product_screen.dart';
import 'add_burger_screen.dart';

class HomeWork9 extends StatefulWidget {
  const HomeWork9({super.key});

  @override
  State<HomeWork9> createState() => _HomeWork9State();
}

class _HomeWork9State extends State<HomeWork9> {

  int _currentIndex = 1;
  List<Widget> screens = [
    BurgerProductScreen(),
    AdminBurgerScreen(),
    AddBurgerScreen(),
    AddBurgerScreen(),
  ];
  List<String> categories = ['All', 'Combos', 'Sliders', 'Class'];

  List<Map<String, dynamic>> products = [
    {
      'image': 'assets/image6.png',
      'name': 'Cheeseburger',
      'description': 'Wendy' 's Burger',
      'rate': '4.9',
      'isLike': false,
    },
    {
      'image': 'assets/image5.png',
      'name': 'Hamburger',
      'description': 'Veggie Burger',
      'rate': '4.8',
      'isLike': false,
    },
    {
      'image': 'assets/image3.png',
      'name': 'Hamburger',
      'description': 'Chicken Burger',
      'rate': '4.6',
      'isLike': false,
    },
    {
      'image': 'assets/burger3.png',
      'name': 'Hamburger',
      'description': 'Fried Chicken Burger',
      'rate': '4.5',
      'isLike': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: SafeArea(
        child: screens[_currentIndex],
      ),
      bottomNavigationBar: Container(
        color: Colors.red,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.red,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.green,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HomeWork9'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'AdminScreen'),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: 'HomeWork9'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'AddBurgerScreen'),
          ],
        ),
      ),
    );
  }
  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 120,
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Foodgo',
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('assets/image8.png'),
                    fit: BoxFit.cover,
                  )
                ),

                // child: Image.asset(width: 60, height: 60, 'assets/image8.png'),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                textAlign: TextAlign.left,
                'Order your favorite food!',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
      actions: [],
      // leading: Text('Order your favorite food!'),
    );
  }
}
