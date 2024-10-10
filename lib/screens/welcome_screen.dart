import 'package:flutter/material.dart';
import 'package:untitled1/screens/first_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/ellipse1.png')
                )
              ),
              child: Center(
                child: Icon(Icons.access_alarm_sharp, color: Colors.orange,size: 70,),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Enjoy Your Food',
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
                },
                child: Text('Get Started',
                style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Poppins',fontSize: 27, color: Colors.deepPurple),),
            )
          ],
        ),
      ),
    );
  }
}


