import 'package:flutter/material.dart';
import '../app_textslyle.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(

          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(color: Colors.black,
                    width: 2)),
            backgroundColor: isWhite ? Colors.white : Colors.cyan[900],
          ),
          onPressed: onTap,
          child: Text(
            title,
            style: AppTextstyle.s13w500.copyWith(color: isWhite ? Colors.black : Colors.white),
          ),
        ),
      ),
    );
  }
}