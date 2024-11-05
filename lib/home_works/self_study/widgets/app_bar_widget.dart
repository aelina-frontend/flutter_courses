
import 'package:flutter/material.dart';

PreferredSizeWidget appBarWidget(){
  return AppBar(

    title: const Text('Appbar'),
    actions: const [
      Text('1 widget'), Icon(Icons.add),
    ],
    backgroundColor: Colors.green,
    elevation: 10,
  );
}
