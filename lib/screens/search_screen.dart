import 'package:flutter/material.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart_outlined, size: 40,),
            onPressed: (){
              Navigator.of(context).pushNamed('/firstScreen');
              // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
            },
          )
        ],
      ),
      body: Container(
        child: Text('Search Screen'),
      ),
    );
  }
}
