import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/app_assets.dart';
import 'cart_provider.dart';
import 'data.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Card(margin: EdgeInsets.all(15),
          child: Padding(padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total: ',
              style: TextStyle(fontSize: 20),
              ),
              Spacer(),
              Chip(
                label: Text(
                '\$${cart.totalAmount.toStringAsFixed(2)}',
              style: TextStyle(color: Colors.white),
                ),
              backgroundColor: Theme.of(context).primaryColor,
              ),
              TextButton(onPressed: (){},
                  child: Text('RENT CAR'),
              ),
              // OrderButton(cart: cart,),
            ],
          ),)
          ),
          SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx, i) =>  CartItemWidget(
                  id: cart.items.values.toList()[i].id,
                  productId: cart.items.keys.toList()[i],
                  title: cart.items.values.toList()[i].title,
                  quantity: cart.items.values.toList()[i].quantity,
                  price: cart.items.values.toList()[i].price,
                ),
              ))
        ],
      ),
    );
  }
}

class CartItemWidget extends StatelessWidget {
  final String id;
  final String productId;
  final String title;
  final int quantity;
  final double price;

  const CartItemWidget(
      {super.key,
        required this.id,
        required this.productId,
        required this.title,
        required this.quantity,
        required this.price});



  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: ValueKey(id),
        background: Container(
          color: Colors.redAccent,
          child: Icon(Icons.delete, color: Colors.white, size: 40,),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        ),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          Provider.of<Cart>(context, listen: false).removeItem(productId);
        },
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
          child: Padding(
            padding: EdgeInsets.all(8),
          child: ListTile(
            leading: CircleAvatar(
              child: Padding(padding: EdgeInsets.all(2),
              // child: FittedBox(child: Text('\$${price}'),),
              ),
              backgroundImage: Image.asset(AppAssets.getAssetPath(title)).image,
            ),
            title: Text(title),
            subtitle: Text('Total: \$${(price * quantity).toStringAsFixed(2)}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: (){
                  Provider.of<Cart>(context, listen: false).removeSingleItem(productId);
                }, icon: Icon(Icons.remove)
                ),
                Text('$quantity'),
                IconButton(onPressed: (){
                  Provider.of<Cart>(context, listen: false).addItem(productId,price, title);
                }, icon: Icon(Icons.add)),
              ],
            ),
            )
          ),
          ));
  }
}

