import 'package:flutter/material.dart';
import 'package:untitled1/home_works/home_work18/core/hw_app_color.dart';

class HwProductEntities {
  final String discount;
  Color discountColor;
  bool isLike;
  final String image;
  final double price;
  final String name;
  final String weight;
  final Color circleColor;
  final String description;
  final double rating;
  int counter;
  bool isShow;

  HwProductEntities(
      {this.discount = '',
      this.discountColor = HwAppColors.whiteColor,
        this.isLike = false,
      required this.image,
      required this.price,
      required this.name,
      required this.weight,
      required this.circleColor,
      required this.description,
      required this.rating,
      this.counter = 1,
      this.isShow = true,
      });
}

List<HwProductEntities> hwProductEntities = [
  HwProductEntities(
      image: 'assets/peach.png',
      price: 8.00,
      name: 'Fresh Peach',
      weight: 'dozen',
      circleColor: HwAppColors.lightPink,
      rating: 4.50,
      description:
      'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars '
          'on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing more'),
  HwProductEntities(
      image: 'assets/avocado.png',
      price: 7.00,
      name: 'Avocado',
      weight: '2.0 Ibs',
      circleColor: HwAppColors.lightYellow,
      discount: 'NEW',
      discountColor: HwAppColors.lightYellow,
      rating: 3.50,
      description:
      'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars '
          'on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing more'),
  HwProductEntities(
      image: 'assets/pineapple.png',
      price: 9.90,
      name: 'Pineapple',
      weight: '1.50 Ibs',
      rating: 4.50,
      circleColor: HwAppColors.lightYellow,
      description:
      'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars '
          'on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing more'),
  HwProductEntities(
      image: 'assets/grapes.png',
      price: 7.05,
      name: 'Black Grapes',
      weight: '5.0 Ibs',
      circleColor: HwAppColors.lightPink,
      discount: '-16%',
      discountColor: HwAppColors.lightPink,
      rating: 4.50,
      description:
      'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars '
          'on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing more')
];

List<HwProductEntities> shoppingCart = [

];