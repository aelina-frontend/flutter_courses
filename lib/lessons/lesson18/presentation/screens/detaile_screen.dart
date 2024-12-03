import 'package:flutter/material.dart';

import 'package:untitled1/lessons/lesson18/core/app_colors.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/detail_body/image_body.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/detail_body/info_body.dart';

class DetaileScreen extends StatelessWidget {
  final ProductEntities productEntities;

  const DetaileScreen({super.key, required this.productEntities});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: productEntities.circleColor,
      ),
      body: Column(
        children: [
          ImageBody(
              color: productEntities.circleColor, image: productEntities.image),
          InfoBody(
            price: productEntities.price,
            isLike: productEntities.isLike,
            description: productEntities.description,
            name: productEntities.name,
            weight: productEntities.weight,
            rating: productEntities.rating,
            counter: productEntities.counter,
          ),
        ],
      ),
    );
  }
}
