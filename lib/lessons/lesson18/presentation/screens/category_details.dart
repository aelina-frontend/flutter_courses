import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';
import 'package:untitled1/lessons/lesson18/presentation/widgets/card_widget.dart';

class CategoryDetails extends StatefulWidget {
  final List<ProductEntities> categoryProducts;
  const CategoryDetails({super.key, required this.categoryProducts});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          CardWidget(products: widget.categoryProducts)
        ],
      )
    );
  }
}
