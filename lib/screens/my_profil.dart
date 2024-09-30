
import 'package:flutter/material.dart';

import '../core/common/common_button.dart';
import '../core/my_appbar.dart';

class MyProfil extends StatelessWidget {
  const MyProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: Column(
        children: [
    Padding(
      padding: const EdgeInsets.only(left: 25, right: 20),
      child: Image.asset(
        width: 400,
        'assets/frame12.png',
      ),
    ),
    SizedBox(height: 20,),
          Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.perm_identity, size: 40,color: Colors.grey,),
                  onPressed: (){},
                ),
                SizedBox(width: 90,),
                Text('My profil', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'Red Hat Text', color: Colors.cyan[900]),),
                SizedBox(width: 90,),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, size: 30,color: Colors.grey,),
                  onPressed: (){},
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.settings, size: 40,color: Colors.grey,),
                  onPressed: (){},
                ),
                SizedBox(width: 90,),
                Text('Settings', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'Red Hat Text', color: Colors.cyan[900]),),
                SizedBox(width: 90,),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, size: 30,color: Colors.grey,),
                  onPressed: (){},
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.notifications_none, size: 40,color: Colors.grey,),
                  onPressed: (){},
                ),
                SizedBox(width: 90,),
                Text('Notification', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'Red Hat Text', color: Colors.cyan[900]),),
                SizedBox(width: 60,),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, size: 30,color: Colors.grey,),
                  onPressed: (){},
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.key_sharp, size: 35,color: Colors.grey,),
                  onPressed: (){},
                ),
                SizedBox(width: 90,),
                Text('Privacy', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'Red Hat Text', color: Colors.cyan[900]),),
                SizedBox(width: 100,),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, size: 30,color: Colors.grey,),
                  onPressed: (){},
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.help_center_outlined, size: 40,color: Colors.grey,),
                  onPressed: (){},
                ),
                SizedBox(width: 90,),
                Text('Help & Info', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'Red Hat Text', color: Colors.cyan[900]),),
                SizedBox(width: 60,),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, size: 30,color: Colors.grey,),
                  onPressed: (){},
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CommonButton(
                title: 'Log Out',
                isWhite: false,
                onTap: () {
                  Navigator.of(context).pushNamed('/authScreen');
                }
            ),
          ),

        ],

      )
    );
  }
}
