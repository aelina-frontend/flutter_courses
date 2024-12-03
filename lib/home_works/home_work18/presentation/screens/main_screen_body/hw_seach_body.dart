import 'package:flutter/material.dart';
import 'package:untitled1/home_works/home_work18/core/hw_app_color.dart';

class HwSeachBody extends StatelessWidget {
  const HwSeachBody({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: HwAppColors.searchBarColor,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: HwAppColors.greyColor,
        ),
        hintText: 'Search keyword..',
        hintStyle: TextStyle(color: HwAppColors.greyColor),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.tune,
            color: HwAppColors.greyColor,
          ),
        ),
      ),
    );
  }
}
