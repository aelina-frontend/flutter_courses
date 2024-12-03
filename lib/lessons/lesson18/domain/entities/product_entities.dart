import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';

class ProductEntities {
  final String discount;
  final Color discountColor;
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
  final String category;
  final String categoryImage;

  ProductEntities(
      {this.discount = '',
      this.discountColor = AppColors.whiteColor,
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
      required this.category,
      required this.categoryImage,
      });
}

List<ProductEntities> productEntities = [
  ProductEntities(
      image: 'assets/peach.png',
      category: 'Fruits',
      categoryImage: 'assets/group.png',
      price: 8.00,
      name: 'Fresh Peach',
      weight: 'dozen',
      circleColor: AppColors.lightPink,
      rating: 4.50,
      description:
          'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars '
              'on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing more'),

  ProductEntities(
      image: 'assets/avocado.png',
      category: 'Fruits',
      categoryImage: 'assets/group2.png',
      price: 7.00,
      name: 'Avocado',
      weight: '2.0 Ibs',
      circleColor: AppColors.lightYellow,
      discount: 'NEW',
      discountColor: AppColors.lightYellow,
      rating: 3.50,
      description:
      'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars '
          'on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing more'),
  ProductEntities(
      image: 'assets/pineapple.png',
      category: 'Fruits',
      categoryImage: 'assets/group3.png',
      price: 9.90,
      name: 'Pineapple',
      weight: '1.50 Ibs',
      rating: 4.50,
      circleColor: AppColors.lightYellow,
      description:
      'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars '
          'on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing more'),
  ProductEntities(
      image: 'assets/grapes.png',
      category: 'Fruits',
      categoryImage: 'assets/group4.png',
      price: 7.05,
      name: 'Black Grapes',
      weight: '5.0 Ibs',
      circleColor: AppColors.lightPink,
      discount: '-16%',
      discountColor: AppColors.lightPink,
      rating: 4.50,
      description:
      'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars '
          'on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing more'),
  ProductEntities(
      image: 'assets/pomegranate.png',
      category: 'Fruits',
      categoryImage: 'assets/group5.png',
      price: 2.09,
      name: 'Pomegranate',
      weight: '1.50 Ibs',
      circleColor: AppColors.lightPink,
      discount: 'NEW',
      discountColor: AppColors.lightPink,
      rating: 5.00,
      description:
      'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars '
          'on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing more'),
  ProductEntities(
      image: 'assets/green.png',
      category: 'Vegetables',
      categoryImage: 'assets/group6.png',
      price: 3.00,
      name: 'Fresh Broccoli',
      weight: '1 kg',
      circleColor: AppColors.lightGreen2,
      discountColor: AppColors.lightGreen2,
      rating: 4.50,
      description:
      'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars '
          'on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing more'),

];

List<ProductEntities> cart = [

];

List<ProductEntities> favoriteProducts = [

];