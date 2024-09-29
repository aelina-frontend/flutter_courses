import 'package:flutter/material.dart';

import '../core/common/common_button.dart';
import '../core/my_appbar.dart';
import '../switch/switch_text_form_field.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/creditCard.png',
            ),
            SizedBox(height: 30,),
            Form(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Card Number:',
                      // prefixText: 'Sim Name:',
                      // prefixStyle: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
                      suffixText: '111 0111 202 0110 011',
                    ),
                  ),
                )
            ),
            SizedBox(height: 20,),
            Form(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Expiration Date:',
                      // prefixText: 'Sim Name:',
                      // prefixStyle: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
                      suffixText: '02 05 2030',
                    ),
                  ),
                )
            ),
            SizedBox(height: 20,),
            Form(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'CCV:',
                      // prefixText: 'Sim Name:',
                      // prefixStyle: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
                      suffixText: '142',
                    ),
                  ),
                )
            ),
            SizedBox(height: 20,),
            Form(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        suffixIcon: SwitchTextFormField(
                          hintText: 'Remember This Info',
                          onSwitchChanged: (value) {
                            // Handle switch change here
                            print('Switch value: $value');
                          },
                        )

                    ),
                  ),
                )
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CommonButton(
                  title: 'Pay',
                  isWhite: false,
                  onTap: () {
                    Navigator.of(context).pushNamed('/paymendMade');
                  }
              ),
            ),
          ],
        ),
      ),

    );
  }
}
