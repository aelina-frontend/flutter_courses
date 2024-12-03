import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/home_screen_body/bunner_body.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/home_screen_body/category_body.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/home_screen_body/product_body.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/home_screen_body/search_body.dart';
import 'package:untitled1/lessons/lesson18/presentation/widgets/card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  final TextEditingController minController = TextEditingController();
  final TextEditingController maxController = TextEditingController();
  List<ProductEntities> filteredProducts = [];

  double minPrice = 0;
  double maxPrice = double.infinity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filteredProducts = productEntities;
    searchController.addListener(search);
  }

  void search() {
    applyFilter();
  }

  void applyFilter(){
    setState(() {
      final text = searchController.text.toLowerCase();
      filteredProducts =
          productEntities.where((item) => item.name.toLowerCase().contains(text)
          && item.price >= minPrice && item.price <= maxPrice
          ).toList();
    });
  }

  void filterByPrice(){
    setState(() {
      minPrice = double.tryParse(minController.text) ?? 0.0;
      maxPrice = double.tryParse(maxController.text) ?? double.infinity;
      applyFilter();
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SearchBody(
                    apply: (){
                      filterByPrice();
                    },
                    maxController: maxController,
                    minController: minController,
                    controller: searchController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BannerBody(),
                  SizedBox(
                    height: 10,
                  ),
                  CategoryBody(),
                ],
              ),
            ),
            CardWidget(
              products: filteredProducts,
            ),
          ],
        ),
      ),
    );
  }
}
