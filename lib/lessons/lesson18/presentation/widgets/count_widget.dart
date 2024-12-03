import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';

Widget countWidget({
  required int counter,
required Function() increment, required Function() decrement,
}) {
  return Container(
    height: 53,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: AppColors.whiteColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quantity',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.greyColor),
        ),
        Row(
          children: [
            IconButton(
              onPressed: decrement,
              icon: Icon(Icons.remove, color: AppColors.greenColor,),
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            IconButton(
              onPressed: increment,
              icon: Icon(Icons.add, color: AppColors.greenColor,),
            ),
          ],
        )
      ],
    ),
  );
}
