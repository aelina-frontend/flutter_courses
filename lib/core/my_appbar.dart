
import 'package:flutter/material.dart';
import 'package:untitled1/screens/first_screen.dart';

var myAppBar =  AppBar(
  title: const Text(
    'Popup Menus',
    style: TextStyle(color: Colors.white, fontSize: 16.0),
  ),
  actions: [
    Builder(
      builder: (context) {
        return PopupMenuButton(
          onSelected: (result) {
            switch(result){
              case 0: Navigator.of(context).pushNamed('/firstScreen');
              break;
              case 1: Navigator.of(context).pushNamed('/firstScreen');
              break;
              case 2: Navigator.of(context).pushNamed('/paymentMethodsScreen');
              break;
              case 3: Navigator.of(context).pushNamed('/paymendMade');
              break;
              case 4: Navigator.of(context).pushNamed('/infoPage');
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
              child: Text('Settings'),
            ),
            PopupMenuItem(
              value: 3,
              child: Text('Notifications'),
            ),
            PopupMenuItem(
              value: 4,
              child: Text('Info page'),
            ),
          ];
        },
        );
      }
    ),
    // PopupMenuItem(
    //   onTap: (){
    //     Navigator.of(ctx).pushNamed('/firstScreen');
    //   },
    //   child:  Text('мая строница'),
    // ),
    // PopupMenuItem(
    //   onTap: (){
    //     Navigator.of(ctx).pushNamed('/creditCard');
    //   },
    //   child:  Text('мая строница'),
    // ),
  ],
);

