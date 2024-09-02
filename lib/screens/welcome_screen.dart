import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/core/app_assets.dart';
import 'package:untitled1/core/common/common_button.dart';
import 'package:untitled1/core/theme/app_dimens.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/screens/discover_screen.dart';
import '../auth/auth_screen.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
        Stack(
          children:[ Image.asset(
                    fit: BoxFit.cover,
                     AppAssets.rectangle,
                   ),
                    Positioned(
                      right: 0,
                      left: 0,
                      top: 0,
                      bottom: 0,
                      child: Image.asset(
                         AppAssets.group,
                         height: 100,
                         width: 250,
                       ),
                    ),
          ]
        ),
            Padding(
              padding: EdgeInsets.only(top: AppDimens.largePadding,
              left: AppDimens.mediumPadding,
              right: AppDimens.mediumPadding),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CommonButton(
                        title: 'LOG IN',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthScreen( isRegistrationForm: false,)));
                        }),
                  ),
                  const SizedBox(width: AppDimens.smallPadding,),
                  Expanded(
                    child: CommonButton(
                      isWhite: false,
                        title: 'REGISTER',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthScreen( isRegistrationForm: true,)));
                        }),
                  ),
                ],),
            )
      ],
    )
      ));
  }
}

