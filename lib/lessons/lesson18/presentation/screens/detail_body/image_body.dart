import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';

class ImageBody extends StatelessWidget {
  final Color color;
  final String image;
  const ImageBody({super.key, required this.color, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          _oval(color: color),
          _image(image: image),

        ],
      ),
    );
  }

  Widget _oval({required Color color}){
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 260,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(200),
            bottomLeft: Radius.circular(200),
          ),
        ),
      ),
    );
  }
  
  Widget _image({required String image}){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(image, ),

    );
  }
}
