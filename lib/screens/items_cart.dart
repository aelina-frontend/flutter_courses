import 'package:flutter/material.dart';
import 'package:untitled1/screens/widgets/bottom_navigation_bar_widget.dart';
import 'package:untitled1/screens/widgets/button_widget.dart';

import 'first_screen.dart';

class ItemsCart extends StatefulWidget {
  const ItemsCart({super.key});

  @override
  State<ItemsCart> createState() => _ItemsCartState();
}

class _ItemsCartState extends State<ItemsCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '2 Items in Cart',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(
                height: 20,
              ),
              cartProduct(
                  image: 'assets/pizza2.png',
                  name: 'Pissa Fries',
                  price: 32),
              SizedBox(
                height: 20,
              ),
              cartProduct(
                  image: 'assets/burger2.png',
                  name: 'Beef Burger',
                  price: 20),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Payment Method',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 89,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[200],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/visa.png',
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Jenius Card'), Text('0272 7414 ***')],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              taxText(text: 'Subtotal', productPrice: '\$52'),
              taxText(text: 'Tax 10%', productPrice: '\$5'),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    '\$57',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        color: Colors.orangeAccent),
                  )
                ],
              ),
              SizedBox(height: 25),
              buttonWigdet(text: 'Order', onPressed: () {}),
              SizedBox(height: 22),
              Text(
                'Back to Menu',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(height: 25),
              bottomNavigationBarWidget(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  double counter = 0;
  Widget icon = Icon(Icons.add_circle_outline);
  Widget icon2 = Icon(Icons.remove_circle_outline);

  Widget cartProduct(
      {required String image, required String name, required double price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[200],
          ),
          child: Image.asset(image),
        ),
        Column(
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins'),
            ),
            Text(
              '\$$price',
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  color: Colors.yellow[700]),
            ),
            Row(
              children: [
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
          ],
        ),
        Icon(
          Icons.cancel_outlined,
          color: Colors.red,
        )
      ],
    );
  }

  Widget taxText({required String text, required String productPrice}) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Inter'),
        ),
        Spacer(),
        Text(
          productPrice,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
              color: Colors.grey),
        )
      ],
    );
  }
}
