import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/category_details.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/favorite_screen.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({super.key});

  @override
  State<CategoryBody> createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  @override
  Widget build(BuildContext context) {
    final categories =
        productEntities.map((item) => item.category).toSet().toList();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final categoryImage = productEntities
                    .firstWhere((item) => item.category == categories[index])
                    .categoryImage;
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoryDetails(
                                categoryProducts: productEntities
                                    .where(
                                        (item) => item.category == categories[index])
                                    .toList(),
                              ),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundColor: productEntities[index].circleColor,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(categoryImage),
                            backgroundColor: productEntities[index].circleColor,
                            radius: 17,
                          ),
                        ),
                      ),
                      Text(
                        categories[index],
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
