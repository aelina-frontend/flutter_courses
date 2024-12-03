import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';

Widget buttonWidget({required String text, required Function() onTap, bool isVisible = true}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 53,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [
            Color(0xFFAEDC81),
            Color(0xFF6CC51D),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppColors.whiteColor,
            ),
          ),
          Visibility(
            visible: isVisible,
            child: Icon(
              Icons.shopping_bag_outlined,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    ),
  );
}

// Widget buttonWidget({required String text}) {
//   return ElevatedButton(
//     onPressed: () {},
//     child: Text(text),
//   );
// }
