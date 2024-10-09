import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/main.dart';
import '../core/app_assets.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
          fit: StackFit.expand,
          children:
          [
            Image.asset(AppAssets.mainPic),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 8,
                    child:
                    Image.asset(
                        'assets/tira.png',
                        width: 100, height: 150),
                  ),
                  Expanded(
                    flex: 2,
                    child: const Text(
                      'Rent your dream car from the \n Best Company',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Hind',
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/test');
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Colors.redAccent),
                            foregroundColor: WidgetStateProperty.all(Colors.white),
                            minimumSize: WidgetStateProperty.all(Size(220, 50)),
                            maximumSize: WidgetStateProperty.all(Size(220, 50)),
                            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                          ),
                          child: Text('Get Started >',
                            style: TextStyle(fontSize: 20, fontFamily: 'Inconsolata', fontWeight: FontWeight.w500),
                          ),
                        ),
                      )

                  )]
            ),
          ]),
    );
  }
}