import 'package:flutter/material.dart';
import 'package:untitled1/screens/data.dart';

import 'cart_screen.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: [
          Padding(padding: EdgeInsets.all(10),
            child: IconButton(icon: Icon(Icons.shopping_cart),
          onPressed: (){
            Navigator.of(context).pushNamed('/cartScreen');
            // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
          },
          )
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: DUMMY_PRODUCTS.length,
        itemBuilder: (ctx, i) => ListTile(
          title: Text(DUMMY_PRODUCTS[i]['title'] as String),
          subtitle: Text('\$${DUMMY_PRODUCTS[i]['price']}'),
          trailing: IconButton(
            icon: Icon(Icons.add),
            onPressed: (){},
          ),
        ),

      ),

    );
  }
}
