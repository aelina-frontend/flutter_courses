import 'package:untitled1/lessons/lesson17/domain/repositories/product_repositories.dart';

import '../entities/product_entities.dart';

class GetProductUseCase{
  final ProductRepositories productRepositories;

  GetProductUseCase({required this.productRepositories});
  List<ProductEntities> call(){
    return productRepositories.getProducts();

  }
}

class LikeProductUseCase{
  final ProductRepositories productRepositories;

  LikeProductUseCase({required this.productRepositories});
  void call(){
    productRepositories.likeProduct();
  }
}

class FilterProductUseCase{
  final ProductRepositories productRepositories;

  FilterProductUseCase({required this.productRepositories});
  void call(){
    productRepositories.filterProduct();
  }

}

class SearchProductUseCase{
  final ProductRepositories productRepositories;

  SearchProductUseCase({required this.productRepositories});
  void call(){
    productRepositories.searchProduct();
  }

}