import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';

class ProductCartBody extends StatefulWidget {
  final String name;
  final String weight;
  final double price;
  final String image;
  final Color circleColor;

  const ProductCartBody(
      {super.key,
      required this.name,
      required this.weight,
      required this.price,
      required this.image,
      required this.circleColor});

  @override
  State<ProductCartBody> createState() => _ProductCartBodyState();
}

class _ProductCartBodyState extends State<ProductCartBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productEntities.length,
        itemBuilder: (context, index) {
          return Container(
            height: 130,
            width: double.infinity,
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(widget.image),
                    backgroundColor: widget.circleColor,
                    radius: 50,
                  ),
                  trailing: Text('${widget.price}'),
                  title: Text(widget.name),
                  subtitle: Text(widget.weight),
                )
              ],
            ),
          );
        });
  }
}
