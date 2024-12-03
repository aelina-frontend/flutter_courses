import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/home_works/home_work18/core/hw_app_color.dart';
import 'package:untitled1/home_works/home_work18/domain/entieties/hw_product_entities.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';

import '../hw_detaile_screen.dart';

class HwProductBody extends StatefulWidget {
  const HwProductBody({super.key});

  @override
  State<HwProductBody> createState() => _HwProductBodyState();
}

class _HwProductBodyState extends State<HwProductBody> {

  HwProductEntities? existingProduct;

  void _add(HwProductEntities data){
    for(var item in cart){
      if(item.name == data.name){
        existingProduct = item as HwProductEntities?;
        break;
      }
    }
    if(existingProduct != null){
      existingProduct!.counter++;
    }else{
      shoppingCart.add(data);
    }
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
          childCount: hwProductEntities.length,
              (context, index) {
            return Card(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HwDetaileScreen(),
                    ),
                  );
                },
                child: Container(
                  color: HwAppColors.whiteColor,
                  child: Column(
                    children: [
                      _discountLike(
                          text: hwProductEntities[index].discount,
                          discountColor: hwProductEntities[index].discountColor,
                          isLike: hwProductEntities[index].isLike,
                          onPressed: () {
                            setState(() {
                              hwProductEntities[index].isLike =
                              !hwProductEntities[index].isLike;
                            });
                          }),
                      _image(
                          image: hwProductEntities[index].image,
                          backgroundColor: hwProductEntities[index]
                              .circleColor),
                      Text(
                        '${hwProductEntities[index].price}', style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: HwAppColors.lightGreen),
                      ),
                      Text(
                        hwProductEntities[index].name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        hwProductEntities[index].weight,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: HwAppColors.greyColor),
                      ),
                      Divider(),
                      _addToCart(isShow: hwProductEntities[index].isShow, onPressed: (){
                        _add(hwProductEntities[index]);
                        setState(() {
                          hwProductEntities[index].isShow = false;
                        });
                      }, counter: hwProductEntities[index].counter, increment: (){
                        _add(hwProductEntities[index]);
                        setState(() {
                          hwProductEntities[index].counter++;
                        });
                        }, decrement: (){
                        if(hwProductEntities[index].counter > 0){
                          setState(() {
                            hwProductEntities[index].counter--;
                          });
                        }
                      })
                    ],
                  ),
                ),
              ),
            );
          }),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        childAspectRatio: 0.64,
      ),
    );
  }

  Widget _discountLike({required String text,
    required Color discountColor,
    required bool isLike,
    required Function()? onPressed}) {
    return Row(
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
              : Icon(Icons.favorite_border),
        ),
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

  Widget _addToCart(
      {required bool isShow, required Function() onPressed, required int counter, required Function() increment, required Function() decrement}) {
    return isShow ? IconButton(onPressed: onPressed, icon: Row(
      children: [
        Icon(Icons.shopping_bag_outlined,
        color: HwAppColors.lightGreen,),
        Text(
          'Add to cart',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    ),) :
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: decrement,
          icon: Icon(Icons.remove, color: HwAppColors.greenColor,),
        ),
        Text(
          '$counter',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        IconButton(
          onPressed: increment,
          icon: Icon(Icons.add, color: HwAppColors.greenColor,),
        ),
      ],
    );
  }
}
