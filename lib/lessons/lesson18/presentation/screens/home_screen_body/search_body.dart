import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';

class SearchBody extends StatelessWidget {
  final TextEditingController controller;
  final TextEditingController minController;
  final TextEditingController maxController;
  final Function() apply;

  const SearchBody(
      {super.key, required this.controller, required this.minController, required this.maxController, required this.apply});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.searchBarColor,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(Icons.search, color: AppColors.greyColor,),
        hintText: 'Search keyword..',
        hintStyle: TextStyle(color: AppColors.greyColor),
        suffixIcon: IconButton(
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text('Price Range'),
                content: SizedBox(
                  child: Row(
                    children: [
                      textField(text: 'Min.', controller:minController),
                      SizedBox(width: 10,),
                      textField(text: 'Max.', controller: maxController),
                    ],
                  ),
                ),
                actions: [
                  TextButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text('cancel')),
                  TextButton(onPressed: apply, child: Text('apply')),
                ],
              );
            });
          },
          icon: Icon(Icons.tune, color: AppColors.greyColor,),
        ),
      ),
    );
  }

  Widget textField(
      {required String text, required TextEditingController controller}) {
    return Expanded(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
          ),
          fillColor: AppColors.backgroundColor,
          filled: true,
          hintText: text,
        ),
      ),
    );
  }
}
