import 'package:flutter/material.dart';
import 'package:untitled1/home_works/home_work18/core/hw_app_color.dart';

class CategoryData {
  final String avatarPhoto;
  final String productName;
  final Color color;

  CategoryData({required this.avatarPhoto, required this.productName, required this.color});
}

List<CategoryData> categoryData = [
  CategoryData(avatarPhoto: 'assets/group.png', productName: 'Vegetables', color: HwAppColors.lightGreenColor),
  CategoryData(avatarPhoto: 'assets/group2.png', productName: 'Fruits', color: HwAppColors.lightGreenColor),
  CategoryData(avatarPhoto: 'assets/group3.png', productName: 'Beverages', color: HwAppColors.lightGreenColor),
  CategoryData(avatarPhoto: 'assets/group4.png', productName: 'Grocery', color: HwAppColors.lightGreenColor),
  CategoryData(avatarPhoto: 'assets/group5.png', productName: 'Edible oil', color: HwAppColors.lightGreenColor),
  CategoryData(avatarPhoto: 'assets/group6.png', productName: 'Household', color: HwAppColors.lightGreenColor),
];
