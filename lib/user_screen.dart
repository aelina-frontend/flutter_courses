

import 'package:flutter/material.dart';
import 'package:untitled1/widgets/user_info.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          UserInfo(),
        ],
      )
    );
  }
}
