import 'package:flutter/material.dart';
import 'package:untitled1/core/app_textstyle.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    required this.title,
    required this.onTap,
    this.isWhite = true,
    super.key});

  final String title;
  final Function() onTap;
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(color: Colors.black,
                width: 2)),
          backgroundColor: isWhite ? Colors.white : Colors.black,
        ),
          onPressed: onTap,
          child: Text(
            title,
            style: AppTextstyle.s13w500.copyWith(color: isWhite ? Colors.black : Colors.white),
          ),
      ),
    );
  }
}
