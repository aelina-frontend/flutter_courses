import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/screens/sign_up_screen.dart';
import '../core/app_assets.dart';


class  SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Главная'),
              backgroundColor: Colors.transparent, // Make the background transparent
              elevation: 0, // Remove the shadow for a cleaner look
              leading: const Icon(Icons.menu), // Add a menu icon
              actions: const [Icon(Icons.search)], // Add a search icon
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.withOpacity(1.0),
                      // Adjust opacity as needed
                      Colors.white.withOpacity(1.0),
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.orange.withOpacity(0.8),
            body: Stack(
              children: [
                Positioned.fill(child:
                Container(
                  color: Colors.cyanAccent,
                )),
                Positioned(
                  top: -(mq.width * 1.2),
                  right: -(mq.width / 12),
                  child: Container(
                    height: mq.width * 1.8,
                    width: mq.width * 1.8,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.tealAccent
                          ],
                        )),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30, left: 40),
                    child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppAssets.pic9, height: 60, width: 60,),
                        SizedBox(width: 10,),
                        Text(
                          'Скидки этого сезона!!!',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ]
                  ),
                ),

                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: mq.width * 1.4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                      ),


                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Text(
                            'Категории товаров',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit.passthrough,
                                  children: [
                                    Container(
                                      height: 110,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          gradient: LinearGradient(
                                              colors: [
                                                Colors.lightBlueAccent,
                                                Colors.tealAccent,]
                                          )
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage('https://www.spb.bestmebelshop.ru/upload/resize_cache/iblock/1fc/3840_2160_12f5acf3a40db29ac22367486cf84834b/1fc3f4378c95885160f8aa4d206315a1.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                    )
                                  ]
                              ),
                              SizedBox(width: 10,),
                              Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit.passthrough,
                                  children: [
                                    Container(
                                      height: 110,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          gradient: LinearGradient(
                                              colors: [
                                                Colors.lightBlueAccent,
                                                Colors.tealAccent,]
                                          )
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage('https://divanchik-ekb.ru/files/originals/snimok-ekrana-2023-06-22-141749.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,

                                      ),

                                    )
                                  ]
                              ),
                              SizedBox(width: 10,),
                              Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit.passthrough,
                                  children: [
                                    Container(
                                      height: 110,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          gradient: LinearGradient(
                                              colors: [
                                                Colors.lightBlueAccent,
                                                Colors.tealAccent,]
                                          )
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage('https://vlg.stolplit.ru/upload/resize_cache/iblock/0bf/fd2utqwq49ckh2lspqqjzw0y2d9mxc3v/297_254_0/00000304422-detail.webp'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,

                                      ),

                                    )
                                  ]
                              ),
                            ],
                          ),

                          SizedBox(height: 40,),
                          SizedBox(width: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Посмотреть каталог',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 70,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyGridView()));
                                },
                                child: Container(
                                    height: 40,
                                    width: 70,
                                    margin: EdgeInsets.only(top:20,bottom: 30),
                                    padding: EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: const LinearGradient(colors: [
                                          Colors.redAccent,
                                          Colors.red,
                                        ])
                                    ),
                                    child: const Center(child: Text(
                                      'Все',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    )
                                    )
                                ),
                              ),
                            ]
                          ),
                          SizedBox(width: 10,),
                          Stack(
                              alignment: Alignment.center,
                              fit: StackFit.passthrough,
                              children: [
                                Container(
                                  height: 180,
                                  width: 200,
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage('https://divanchik-ekb.ru/files/originals/snimok-ekrana-2023-06-22-141749.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.lightBlueAccent,
                                            Colors.tealAccent,]
                                      )
                                  ),
                                    child: Container(
                                      width: 200,
                                      height: 50,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            spreadRadius: 3,
                                            blurRadius: 5,
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),),
                                        child: Text(
                                          'Новое поступление',
                                          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                                        ),

                                        ),
                                    ),
                              ]
                          ),

                        ],
                      ),
                    ))
              ],

            )
        )
    );
  }
}