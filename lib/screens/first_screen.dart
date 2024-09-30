import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/app_assets.dart';
import 'cart_provider.dart';
import 'data.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var imageUrls;
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.shopping_cart),
              onPressed: (){
                Navigator.of(context).pushNamed('/productList');
                // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
              },
            ),
            Builder(
                builder: (context) {
                  return PopupMenuButton(
                    onSelected: (result) {
                      switch(result){
                        case 0: Navigator.of(context).pushNamed('/myProfil');
                        break;
                        case 1: Navigator.of(context).pushNamed('/firstScreen');
                        break;
                        case 2: Navigator.of(context).pushNamed('/infoPage');
                        break;
                      }
                    }, itemBuilder: (BuildContext context) {
                    return[
                      PopupMenuItem(
                        value: 0,
                        child: Text('My profile'),
                      ),
                      PopupMenuItem(
                        value: 1,
                        child: Text('Main page'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text('Info page'),
                      ),
                    ];
                  },
                  );
                }
            ),
          ],
        ),
        body: SafeArea(child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(AppAssets.frame, width: 400,),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){},
                        child: Text('Family cars', style: TextStyle(fontSize:12, fontFamily: 'PT Sans', fontWeight: FontWeight.w400, color: Colors.white),),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.cyan[900]),
                          // minimumSize: WidgetStateProperty.all(Size(220, 50)),
                          // maximumSize: WidgetStateProperty.all(Size(220, 50)),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                          ),
                        )
                    ),
                    SizedBox(width: 7,),
                    ElevatedButton(onPressed: (){},
                        child: Text('Cheap cars', style: TextStyle(fontSize:12, fontFamily: 'PT Sans', fontWeight: FontWeight.w400, color: Colors.black),),
                        style: ButtonStyle(
                          // foregroundColor: WidgetStateProperty.all(Colors.white),
                          // minimumSize: WidgetStateProperty.all(Size(220, 50)),
                          // maximumSize: WidgetStateProperty.all(Size(220, 50)),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                          ),
                        )
                    ),
                    SizedBox(width: 7,),
                    ElevatedButton(onPressed: (){},
                        child: Text('Luxuly cars', style: TextStyle(fontSize:12, fontFamily: 'PT Sans', fontWeight: FontWeight.w400, color: Colors.black),),
                        style: ButtonStyle(
                          // foregroundColor: WidgetStateProperty.all(Colors.white),
                          // minimumSize: WidgetStateProperty.all(Size(220, 50)),
                          // maximumSize: WidgetStateProperty.all(Size(220, 50)),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                          ),
                        )
                    ),
                    SizedBox(width: 7,),
                    IconButton(onPressed: (){
                      Navigator.of(context).pushNamed('/searchScreen');
                    },
                        icon: Icon(Icons.search, size: 28, color: Colors.brown,),)
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Text('Cars Available Near You', style: TextStyle(fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w400),),
                    Spacer(),
                    TextButton(onPressed: (){},
                      child: Text('View more', style: TextStyle(fontSize: 14, fontFamily: 'Questrial', fontWeight: FontWeight.w400, color: Colors.red),),
                    ),
                  ],
                ),

                Expanded(
                  // flex: 4,
                  child: GridView.count(
                    primary: false,
                    padding: EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child:Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: Image.asset(AppAssets.rangeRover)),
                                Text(DUMMY_PRODUCTS[0]['title'] as String),
                                Text('\$${DUMMY_PRODUCTS[0]['price']}'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.favorite_border, color: Colors.red,),
                                      onPressed: (){},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_circle_right),
                                      onPressed: (){
                                        Navigator.of(context).pushNamed('/carInformation');
                                      },
                                    ),
                                  ],
                                ),

                              ]
                          )
                      ),
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: Image.asset(AppAssets.lamborghini)),
                                Text('LAMBORGHINI'),
                                Text('\$${DUMMY_PRODUCTS[0]['price']}'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.favorite_border, color: Colors.red,),
                                      onPressed: (){},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_circle_right),
                                      onPressed: (){},
                                    ),
                                  ],
                                ),

                              ]
                          )
                      ),
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child:Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: Image.asset(AppAssets.audi)),
                                Text('AUDI A6'),
                                Text('\$${DUMMY_PRODUCTS[0]['price']}'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.favorite_border, color: Colors.red,),
                                      onPressed: (){},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_circle_right),
                                      onPressed: (){},
                                    ),
                                  ],
                                ),

                              ]
                          )
                      ),
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child:Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: Image.asset(AppAssets.tesla)),
                                Text('TESLA'),
                                Text('\$${DUMMY_PRODUCTS[0]['price']}'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.favorite_border, color: Colors.red,),
                                      onPressed: (){},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_circle_right),
                                      onPressed: (){},
                                    ),
                                  ],
                                ),

                              ]
                          )
                      ),
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child:Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: Image.asset(AppAssets.toyota)),
                                Text('TOYOTA'),
                                Text('\$${DUMMY_PRODUCTS[0]['price']}'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.favorite_border, color: Colors.red,),
                                      onPressed: (){},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_circle_right),
                                      onPressed: (){},
                                    ),
                                  ],
                                ),

                              ]
                          )
                      ),
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child:Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: Image.asset(AppAssets.rangeRover)),
                                Text(DUMMY_PRODUCTS[0]['title'] as String),
                                Text('\$${DUMMY_PRODUCTS[0]['price']}'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.favorite_border, color: Colors.red,),
                                      onPressed: (){},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_circle_right),
                                      onPressed: (){},
                                    ),
                                  ],
                                ),
                              ]
                          )
                      ),
                    ],
                  ),
                )
              ]

          ),
        )
        )
    );
  }
}
