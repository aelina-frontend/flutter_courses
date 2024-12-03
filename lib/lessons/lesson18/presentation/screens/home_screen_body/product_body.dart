import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/detaile_screen.dart';
import 'package:untitled1/lessons/lesson18/presentation/widgets/count_widget.dart';

class ProductBody extends StatefulWidget {
  const ProductBody({super.key});

  @override
  State<ProductBody> createState() => _ProductBodyState();
}

class _ProductBodyState extends State<ProductBody> {

  bool isInCart(ProductEntities productEntities) {
    return cart.any((item) => item.name == productEntities.name);
  }

  void increase(ProductEntities product){
    setState(() {
      final index = cart.indexWhere((item) => item.name == product.name);
      if(index != -1){
        cart[index].counter++;
      }else{
        cart.add(product);
      }
    });
  }

  void decrease(ProductEntities product){
    setState(() {
      final index = cart.indexWhere((item) => item.name == product.name);
      if(index != -1){
        if(cart[index].counter > 1){
          cart[index].counter--;
        }
      }else{
        cart.removeAt(index);
      }
    });
  }

  void _addFavorite(ProductEntities product, int index){
    final _index = favoriteProducts.indexWhere((item) => item.name == product.name);
    setState(() {
      productEntities[index].isLike =
      !productEntities[index].isLike;
    });
    if(productEntities[index].isLike){
      favoriteProducts.add(product);
    }else{
      favoriteProducts.removeAt(_index);
    }
  }
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: productEntities.length,
        (context, index) {
          return Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetaileScreen(productEntities: productEntities[index]),
                  ),
                );
              },
              child: Container(
                color: AppColors.whiteColor,
                child: Column(
                  children: [
                    _discountLike(
                        text: productEntities[index].discount,
                        discountColor: productEntities[index].discountColor,
                        isLike: productEntities[index].isLike,
                        onPressed: () {
                          _addFavorite(productEntities[index], index);
                        }),
                    _image(
                        image: productEntities[index].image,
                        backgroundColor: productEntities[index].circleColor),
                    Text(
                      '\$${productEntities[index].price}',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.lightGreen),
                    ),
                    Text(
                      productEntities[index].name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      productEntities[index].weight,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor),
                    ),
                    Divider(),
                    _addToCart(
                        isShow: isInCart(productEntities[index]),
                        onPressed: () {
                          increase(productEntities[index]);
                        },
                        counter: productEntities[index].counter,
                        increment: () {
                          increase(productEntities[index]);
                        },
                        decrement: () {
                          decrease(productEntities[index]);
                        }),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.64,
      ),
    );
  }

  Widget _discountLike(
      {required String text,
      required Color discountColor,
      required bool isLike,
      required Function()? onPressed}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(backgroundColor: discountColor),
        ),
        IconButton(
            onPressed: onPressed,
            icon: isLike
                ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : Icon(Icons.favorite_border))
      ],
    );
  }

  Widget _image({required String image, required Color backgroundColor}) {
    return SizedBox(
      height: 95,
      width: 100,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: 45,
              backgroundColor: backgroundColor,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(image),
          )
        ],
      ),
    );
  }

  Widget _addToCart({
    required bool isShow,
    required Function() onPressed,
    required int counter,
    required Function() increment,
    required Function() decrement,
  }) {
    return isShow
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: decrement,
                icon: Icon(
                  Icons.remove,
                  color: AppColors.greenColor,
                ),
              ),
              Text(
                '$counter',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              IconButton(
                onPressed: increment,
                icon: Icon(
                  Icons.add,
                  color: AppColors.greenColor,
                ),
              ),
            ],
          )
        : IconButton(
            onPressed: onPressed,
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: AppColors.lightGreen,
                ),
                Text(
                  'Add to cart',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
  }
}
