import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/card_screen.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/home_screen.dart';
import 'package:untitled1/lessons/lesson18/presentation/widgets/button_widget.dart';
import 'package:untitled1/lessons/lesson18/presentation/widgets/count_widget.dart';

class InfoBody extends StatefulWidget {
  final double price;
  final bool isLike;
  final String name;
  final String weight;
  final String description;
  final double rating;
  int counter;

  InfoBody(
      {super.key,
      required this.price,
      required this.isLike,
      required this.description,
      required this.name,
      required this.weight,
      required this.rating,
      required this.counter});

  @override
  State<InfoBody> createState() => _InfoBodyState();
}

class _InfoBodyState extends State<InfoBody> {
  void increment() {
    setState(() {
      widget.counter++;
    });
  }

  void decrement() {
    if (widget.counter > 0) {
      setState(() {
        widget.counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 20, right: 16, left: 16),
        decoration: BoxDecoration(
          color: AppColors.searchBarColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            _priceLike(price: widget.price, isLike: widget.isLike),
            _nameWeight(),
            _rating(rating: widget.rating),
            Text(
              widget.description,
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(
              height: 10,
            ),
            countWidget(
                counter: widget.counter,
                increment: () {
                  increment();
                },
                decrement: () {
                  decrement();
                }),
            SizedBox(
              height: 10,
            ),
            buttonWidget(
              text: 'Add to Cart',
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _priceLike({required double price, required bool isLike}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$${price}',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.lightGreen),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
      ],
    );
  }

  Widget _nameWeight() {
    return Align(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Text(
              widget.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              widget.weight,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.greyColor),
            ),
          ],
        ));
  }

  Widget _rating({required double rating}) {
    return Row(
      children: [
        Text('${rating}'),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.star),
          color: AppColors.orange,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.star),
          color: AppColors.orange,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.star),
          color: AppColors.orange,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.star),
          color: AppColors.orange,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.star_half),
          color: AppColors.orange,
        ),
        Text(
          '(89 reviews)',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.greyColor),
        )
      ],
    );
  }
}
