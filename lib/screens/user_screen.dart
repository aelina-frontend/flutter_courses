

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  UserScreen extends StatelessWidget {
  const UserScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            )
          ],
        ),
    );
  }
}
