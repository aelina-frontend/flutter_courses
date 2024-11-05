import 'package:flutter/material.dart';

class Lesson4 extends StatelessWidget {
  const Lesson4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                addOnes(image: 'assets/chees.png'),
                addOnes(image: 'assets/ketchup.png'),
                addOnes(image: 'assets/sous.png'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget addOnes({required String image}) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Stack(
          children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[200],
            ),
            child: Image.asset(image),
          ),
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle),
            ))
      ]),
    );
  }
}
