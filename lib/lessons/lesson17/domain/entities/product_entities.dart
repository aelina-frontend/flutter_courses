
import '../../data/model/product_model.dart';

class ProductEntities{
  final String name;
  final int price;

  ProductEntities({required this.name, required this.price});
  factory ProductEntities.fromModel(ProductModel model){
    return ProductEntities(name: model.name, price: model.price);
  }
}

