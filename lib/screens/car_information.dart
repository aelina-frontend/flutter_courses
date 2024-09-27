import 'package:flutter/material.dart';

import '../core/app_assets.dart';
import 'data.dart';


class CarInformation extends StatelessWidget {
  const CarInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Car Information'),
        backgroundColor: Colors.cyan[400],
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.cyan[400],
                    child: Image.asset(AppAssets.tiire, width: 400,)
                ),
                Container(

                    child: Image.asset(AppAssets.pure2, width: 400,)
                ),
              ]
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              // Text(DUMMY_PRODUCTS[0]['title'] as String),
              // Text('\$${DUMMY_PRODUCTS[0]['price']}'),
              Text((DUMMY_PRODUCTS[0]['title'] as String), style: TextStyle(fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w400),),
              Spacer(),
              Text('\$${DUMMY_PRODUCTS[0]['price']}', style: TextStyle(fontSize: 20, fontFamily: 'PT Sans', fontWeight: FontWeight.w700, color: Colors.red),),
            ],
          ),
          SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Transition', style: TextStyle(fontSize: 16, fontFamily: 'PT Sans', fontWeight: FontWeight.w400,color: Colors.cyan),),
                          Text('Automatic', style: TextStyle(fontSize: 16, fontFamily: 'PT Sans', fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 200,
                      height: 150,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Speed', style: TextStyle(fontSize: 16, fontFamily: 'PT Sans', fontWeight: FontWeight.w400,color: Colors.cyan),),
                          Text('200kmph', style: TextStyle(fontSize: 16, fontFamily: 'PT Sans', fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 200,
                      height: 150,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Transition', style: TextStyle(fontSize: 16, fontFamily: 'PT Sans', fontWeight: FontWeight.w400,color: Colors.cyan),),
                          Text('Automatic', style: TextStyle(fontSize: 16, fontFamily: 'PT Sans', fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ),
                  ]
                ),
              ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.ellipse3,),
              SizedBox(width: 10,),
              Image.asset(AppAssets.ellipse2,),
              SizedBox(width: 10,),
              Image.asset(AppAssets.ellipse3,),
            ],
          ),
          SizedBox(height: 40,),
          Text(
            textAlign: TextAlign.right,
            'RENDER', style: TextStyle(fontSize: 16, fontFamily: 'Roboto Condensed', fontWeight: FontWeight.w400, color: Colors.teal),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Image.asset(AppAssets.ellipse,),
              SizedBox(width: 20,),
              Text('Lorem Ipsum', style: TextStyle(fontSize: 16, fontFamily: 'PT Sans', fontWeight: FontWeight.w400),),
              Spacer(),
              IconButton(
                icon: Icon(Icons.comment_outlined, color: Colors.deepPurple,),
                onPressed: (){},
              ),
              SizedBox(width: 10,),
              IconButton(
                icon: Icon(Icons.phone, color: Colors.deepPurple,),
                onPressed: (){},
              ),

            ]

          )
        ],
      ),
    );
  }
}
