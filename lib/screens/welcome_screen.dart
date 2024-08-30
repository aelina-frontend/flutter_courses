import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/core/app_assets.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/screens/sign_in_screen.dart';
import 'package:untitled1/screens/sign_up_screen.dart';
import 'package:untitled1/screens/themes_screen.dart';
import '../auth/auth_screen.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                 children: [
                    Image.asset(
                      fit: BoxFit.cover,
                       AppAssets.rectangle,
                     ),
                       Image.asset(
                         AppAssets.group,
                         height: 100,
                         width: 250,
                       ),
                   ],
              ),
            ),
                 Expanded(
                 child: Container(
                   color: Colors.white,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [GestureDetector(
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthScreen(isRegistrationForm: false,)));
                         },
                         child: Container(
                           alignment: Alignment.center,
                             height: 50,
                             width: 150,
                             decoration: BoxDecoration(
                               border: Border.all(
                                 color: Colors.black,
                                 width: 2.0,

                               ),
                                 borderRadius: BorderRadius.circular(5),
                                 color: Colors.white,
                             ),
                             child: const Center(child: Text(
                               'LOG IN',
                               style: TextStyle(
                                   fontSize: 16, color: Colors.black),
                               textAlign: TextAlign.center,
                             )
                             )
                         ),
                       ),
                       SizedBox(width: 10,),
                       GestureDetector(
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthScreen(isRegistrationForm: true,)));
                         },
                         child: Container(
                           alignment: Alignment.center,
                             height: 50,
                             width: 150,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                               color: Colors.black,
                             ),
                             child: const Center(child: Text(
                               'REGISTER',
                               style: TextStyle(
                                   fontSize: 16, color: Colors.white),
                               textAlign: TextAlign.center,
                             )
                             )
                         ),
                       ),
                     ],
                   ),
                 ),
                 )

               ], )


            // Stack(
            //   children: [
            //     Container(
            //       height: 80,
            //       color: Colors.white,
            //
            //     )
            //   ],
            // )

      ),
    );
  }
}