import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';
import 'package:untitled1/lessons/lesson18/presentation/widgets/card_widget.dart';

import '../../core/app_colors.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return favoriteProducts.isEmpty
        ? Center(
            child: Text('no favorites products'),
          )
        : SafeArea(
          child: CustomScrollView(
              slivers: [CardWidget(products: favoriteProducts)],
            ),
        );
  }
}
