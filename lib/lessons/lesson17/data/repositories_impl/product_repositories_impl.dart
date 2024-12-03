import 'package:untitled1/lessons/lesson17/data/data_source/local_data.dart';
import 'package:untitled1/lessons/lesson17/domain/entities/product_entities.dart';
import 'package:untitled1/lessons/lesson17/domain/repositories/product_repositories.dart';

class ProductRepositoriesImpl implements ProductRepositories {
  final LocalDataSource localDataSource;

  ProductRepositoriesImpl({required this.localDataSource});

  @override
  void filterProduct() {
    // TODO: implement filterProduct
  }

  @override
  void likeProduct() {
    // TODO: implement likeProduct
  }

  @override
  void searchProduct() {
    // TODO: implement searchProduct
  }

  @override
  List<ProductEntities> getProducts() {
    return localDataSource
        .getProductsFromDB()
        .map((data) => ProductEntities.fromModel(data))
        .toList();
  }
}
