import 'package:flutter/material.dart';

class ItemContainerWidget extends StatefulWidget {
  const ItemContainerWidget({super.key});

  @override
  State<ItemContainerWidget> createState() => _ItemContainerWidgetState();
}

class _ItemContainerWidgetState extends State<ItemContainerWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 130,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[200],
                ),
                child: Image.asset('assets/pizza2.png'),
              ),
            ],
          ),
          Text(
            'Pissa Fries',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }
}
