import 'package:flutter/material.dart';

import '../core/my_appbar.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
              Text('About Us', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, fontFamily: 'Roboto', color: Colors.black),
              ),
            SizedBox(height: 40,),

            Padding(
              padding: const EdgeInsets.only(left: 50, right: 20, top: 0, bottom: 0),// EdgeInsets.symmetric(10.0),
              child: Text(
                'In publishing and graphic design, Lorem\n ipsum is a placeholder text commonly\n use to demonstrate the visual form of a document. ',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400, fontFamily: 'Red Hat Text', color: Colors.brown),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Or a a typeface without rely meaningful\n content. Lorem ipsum may be used as a\n placeholder before final copy is available',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400, fontFamily: 'Red Hat Text', color: Colors.brown),),
            )
          ],
        ),
      ),
    );
  }
}
