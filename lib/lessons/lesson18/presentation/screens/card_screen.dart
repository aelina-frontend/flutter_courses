import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';
import 'package:untitled1/lessons/lesson18/presentation/screens/card_body/product_cart_body.dart';
import 'package:untitled1/lessons/lesson18/domain/entities/product_entities.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightGrey,
        appBar: AppBar(
          title: Text('Shopping Cart'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: cart.isEmpty
              ? Center(
                  child: Text('корзина пустая'),
                )
              : ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      key: ValueKey(
                        cart[index].name,
                      ),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.delete_outline,
                          size: 40,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      onDismissed: (direction) {
                        setState(() {
                          cart.removeAt(index);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.red,
                              content: Text(
                                  '${cart[index].name} был удален из корзины'),
                            ),
                          );
                        });

                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        margin: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 10,
                        ),
                        height: 100,
                        width: double.infinity,
                        color: AppColors.whiteColor,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(cart[index].image),
                              radius: 35,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    '\$${cart[index].price} x ${cart[index].counter}',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.greenColor,
                                        fontWeight: FontWeight.w500)),
                                Text(
                                  cart[index].name,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(cart[index].weight,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.greyColor,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: AppColors.greenColor,
                                  ),
                                ),
                                Text('${cart[index].counter}'),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove,
                                    color: AppColors.greenColor,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
        ));
  }
}
