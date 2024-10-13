import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled1/screens/welcome_screen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double counter = 0;
  Widget icon = Icon(Icons.add_circle_outline);
  Widget icon2 = Icon(Icons.remove_circle_outline);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 70),
            width: 260,
            height: 200,
            decoration: BoxDecoration(
                // gradient: RadialGradient(
                //   colors: [Colors.transparent, Colors.grey.withOpacity(1)],
                //   center: Alignment(0.5, 0.5),
                //   radius: 0.7,
                // ),
                // gradient: SweepGradient(
                //   colors: [Colors.transparent, Colors.grey, Colors.transparent,Colors.grey,Colors.transparent],
                //   center: Alignment(0.5, 0.1),
                // ),
                // borderRadius: BorderRadius.all(
                //   Radius.circular(60)
                // ),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/burger3.png',
                  ),
                  fit: BoxFit.fill,
                )),
          ),
          Container(
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow[700]),
                            Text(
                              '4.8',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '\$20',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            color: Colors.yellow[700]),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text('Beef Burger',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            counter--;
                          });
                        },
                        icon: icon2,
                      ),
                      Text(
                        '$counter',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        icon: icon,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Big juicy beef burger with cheese, lettuce, \ntomato, onions and special sauce !',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Add Ons',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey[200],
                          ),
                          child: Image.asset('assets/chees.png')),
                      Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey[200],
                          ),
                          child: Image.asset('assets/ketchup.png')),
                      Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey[200],
                          ),
                          child: Image.asset('assets/sous.png')),
                    ],
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    child: Text(
                      'Add to cart',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
