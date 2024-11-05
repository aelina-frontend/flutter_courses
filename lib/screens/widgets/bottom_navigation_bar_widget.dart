import 'package:flutter/material.dart';

Widget bottomNavigationBarWidget({required dynamic Function() onPressed}) {
  return BottomAppBar(
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      // height: 20,
      notchMargin: 4.0,
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.house, size: 30),
            onPressed: onPressed,
          ),
          IconButton(
            icon: Icon(Icons.search, size: 30),
            onPressed: onPressed,
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined, size: 30),
            onPressed: onPressed,
          ),
          IconButton(
            icon: Icon(Icons.perm_identity, size: 30),
            onPressed: onPressed,
          ),
        ],
      ));
}
