
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/core/app_assets.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 25),
                // Image.asset(
                //     AppAssets.profilePicture,
                //     height: 250),
                SizedBox(width: 10),
                Column(
                    children:  [
                      Text(
                        'Victor Alvarado',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      Text(
                        'Software Engineer',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.github,
                            size: 30,
                          ),
                          Icon(
                            FontAwesomeIcons.google,
                            size: 30,
                          ),
                          Icon(
                            FontAwesomeIcons.apple,
                            size: 30,
                          ),
                        ],
                      ),
                    ]
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
