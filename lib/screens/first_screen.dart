import 'package:flutter/material.dart';

import '../core/app_assets.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){},
              ),
              IconButton(icon: Icon(Icons.shopping_cart),
                onPressed: (){
                  Navigator.of(context).pushNamed('/productList');
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
                },
              )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(AppAssets.frame, width: 400,),
            Row(
              children: [
                ElevatedButton(onPressed: (){},
                    child: Text('family cars'),
                    style: ButtonStyle(
                      // backgroundColor: WidgetStateProperty.all(Colors.redAccent),
                      // foregroundColor: WidgetStateProperty.all(Colors.white),
                      // minimumSize: WidgetStateProperty.all(Size(220, 50)),
                      // maximumSize: WidgetStateProperty.all(Size(220, 50)),
                      // shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(30.0),
                      )
      ),


              ],
            )
          ],
        ),
      )
    );
  }
}
