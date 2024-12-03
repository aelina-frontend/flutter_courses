import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson17/data/data_source/local_data.dart';
import 'package:untitled1/lessons/lesson17/data/repositories_impl/product_repositories_impl.dart';
import 'package:untitled1/lessons/lesson17/domain/repositories/product_repositories.dart';
import 'package:untitled1/lessons/lesson17/domain/use_case/get_product_use_case.dart';

import '../../domain/entities/product_entities.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ProductEntities> _products = [];

  late final GetProductUseCase getProductUseCase;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProductUseCase = GetProductUseCase(
      productRepositories: ProductRepositoriesImpl(
        localDataSource: ProductLocalDataSource(),
      ),
    );
    loadProducts();
  }

  void loadProducts(){
   final products = getProductUseCase.call();
    setState(() {
    _products = products;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _products.length,
          itemBuilder: (context, index) {
        return ListTile(
          title: Text(_products[index].name),
          trailing: Text('${_products[index].price}'),
        );
      }),
    );
  }
}
