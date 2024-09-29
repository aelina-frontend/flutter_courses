import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled1/core/my_appbar.dart';
import '../core/app_assets.dart';
import '../core/common/common_button.dart';
import 'data.dart';


class PaymendMade extends StatelessWidget {
  const PaymendMade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: Column(
          children: [
            SizedBox(height: 60,),
            SizedBox(
                width: 182,
                height: 182,
                child: Stack(
                    fit: StackFit.passthrough,
                    alignment: Alignment.center,
                    children:[
                      CustomPaint(
                          painter: ArcGradientPainter()),
                      Container(alignment: Alignment.center, width: 82,height: 82,
                          child: Image.asset(AppAssets.check, width: 102, height: 102, alignment: Alignment.center,)),
                      // Container(alignment: Alignment.center, width: 42,height: 42,
                      //     child: Image.asset('assets/images/inventar/UI-9-sliced object-22.png',width: 42,height: 42, fit: BoxFit.fitWidth,opacity: AlwaysStoppedAnimation(0.5),)),
                    ]
                )
              // child:
            ),
            SizedBox(height: 40,),
            Text('Thank you', style: TextStyle(fontSize: 24, fontFamily: 'Roboto', fontWeight: FontWeight.w700, color: Colors.green),),
            SizedBox(height: 40,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('PAYMENT MADE', style: TextStyle(fontSize: 18, fontFamily: 'PT Sans', fontWeight: FontWeight.w700,color: Colors.cyan[900]),),
                Spacer(),
                Text('\$${DUMMY_PRODUCTS[0]['price']}',
                  style: TextStyle(fontSize: 18, fontFamily: 'PT Sans', fontWeight: FontWeight.w700, color: Colors.green),
                ),
                SizedBox(width: 20,),
              ],
            ),
            SizedBox(height: 50,),
            Text('Well done Your payment is\n Successfuly  done\n and your car is on its way.',
              style: TextStyle(fontSize: 18, fontFamily: 'Red Hat Mono', fontWeight: FontWeight.w400,color: Colors.brown.shade400),
            ),
            SizedBox(height: 60,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(400, 50),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: Colors.black,
                        width: 2)),
                backgroundColor: Colors.white,),
              onPressed: (){},
              child: Text(
                'Track',
                style: TextStyle(fontSize: 20, fontFamily: 'Imprima', fontWeight: FontWeight.w400, color: Colors.cyan[900]),
              ),

            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CommonButton(
                  title: 'Go Back',
                  isWhite: false,
                  onTap: () {
                    Navigator.of(context).pushNamed('/creditCard');
                  }
              ),
            ),
          ]
      ),
    );
  }
}



class ArcGradientPainter extends CustomPainter
{
  final double _strokeWidth = 4;

  @override
  void paint(Canvas canvas, Size size)
  {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);

    const double startAngle = 0;
    const sweepAngle = pi * 2;
    final paint = Paint()
      ..strokeCap = StrokeCap.butt  // StrokeCap.round is not recommended.
      ..style = PaintingStyle.stroke
      ..color = Colors.green
      ..strokeWidth = _strokeWidth;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
        startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate)
  {
    return false;
  }
}