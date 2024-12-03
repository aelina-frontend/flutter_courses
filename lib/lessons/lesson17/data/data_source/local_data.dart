
import '../model/product_model.dart';

abstract class LocalDataSource{
  List<ProductModel> getProductsFromDB();
}

class ProductLocalDataSource implements LocalDataSource{
  @override
  List<ProductModel> getProductsFromDB() {
    return [
      ProductModel(name: 'banana', price: 200),
      ProductModel(name: 'apple', price: 100),
      ProductModel(name: 'grape', price: 250),
      ProductModel(name: 'ananas', price: 500),
    ];
  }
}