import 'package:untitled1/lessons/lesson17/domain/entities/product_entities.dart';

abstract class ProductRepositories{
  List<ProductEntities> getProducts();
  void likeProduct();
  void searchProduct();
  void filterProduct();
}