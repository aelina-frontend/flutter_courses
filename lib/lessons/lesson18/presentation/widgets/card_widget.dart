import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';

import '../screens/detaile_screen.dart';



class CardWidget extends StatefulWidget {
  final List<ProductEntities> products;
  const CardWidget({super.key, required this.products});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {

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
      widget.products[index].isLike =
      !widget.products[index].isLike;
    });
    if(widget.products[index].isLike){
      favoriteProducts.add(product);
    }else{
      favoriteProducts.removeAt(_index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: widget.products.length,
            (context, index) {
          return Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetaileScreen(productEntities: widget.products[index]),
                  ),
                );
              },
              child: Container(
                color: AppColors.whiteColor,
                child: Column(
                  children: [
                    _discountLike(
                        text: widget.products[index].discount,
                        discountColor: widget.products[index].discountColor,
                        isLike: widget.products[index].isLike,
                        onPressed: () {
                          _addFavorite(widget.products[index], index);
                        }),
                    _image(
                        image: widget.products[index].image,
                        backgroundColor: widget.products[index].circleColor),
                    Text(
                      '\$${widget.products[index].price}',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.lightGreen),
                    ),
                    Text(
                      widget.products[index].name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      widget.products[index].weight,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor),
                    ),
                    Divider(),
                    _addToCart(
                        isShow: isInCart(widget.products[index]),
                        onPressed: () {
                          increase(widget.products[index]);
                        },
                        counter: widget.products[index].counter,
                        increment: () {
                          increase(widget.products[index]);
                        },
                        decrement: () {
                          decrease(widget.products[index]);
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

