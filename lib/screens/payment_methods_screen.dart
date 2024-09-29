import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/app_assets.dart';
import '../core/common/common_button.dart';
import '../core/my_appbar.dart';
import '../switch/switch_text_form_field.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: Column(
        children: [
          SizedBox(height: 40,),
          Text('Payment Methods', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, fontFamily: 'Roboto', color: Colors.black),),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.yellow,
                    width: 2,
                  )
                ),
                child: Image.asset(
                    'assets/payment1.png',
                  width: 120,
                  height: 80,
                ),
              ),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.red,
                      width: 2,
                    ),
                ),

                child: Image.asset(
                  'assets/payment2.png',
                  width: 120,
                  height: 80,
                ),
              ),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    )
                ),
                child: Image.asset(
                  'assets/payment3.png',
                  width: 120,
                  height: 80,
                ),
              ),
              ]
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.ellipse2,),
              SizedBox(width: 10,),
              Image.asset(AppAssets.ellipse3,),
              SizedBox(width: 10,),
              Image.asset(AppAssets.ellipse3,),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text('OUR CODES', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'PT Sans', color: Colors.cyan[900]),),
              Spacer(),
              Text('1001110', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'PT Sans', color: Colors.cyan[900]),),
              SizedBox(width: 20,),
            ],
          ),
          SizedBox(height: 20,),
          Form(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  obscureText: false,
                  validator: (value) {
                    if ((value?.length ?? 0) < 3){
                      return 'Слишком короткая почта';
                    } else if(value?.contains('@') != true) {
                      return 'Некорректная почта';
                    }else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Sim Name:',
                      // prefixText: 'Sim Name:',
                      // prefixStyle: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
                      suffixText: 'Lorem Ipsum',
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
                  validator: (value) {
                    if ((value?.length ?? 0) < 3){
                      return 'Слишком короткая почта';
                    } else if(value?.contains('@') != true) {
                      return 'Некорректная почта';
                    }else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Phone Number:',
                    // prefixText: 'Sim Name:',
                    // prefixStyle: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
                    suffixText: '+250 000 11 0011',
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
                  validator: (value) {
                    if ((value?.length ?? 0) < 3){
                      return 'Слишком короткая почта';
                    } else if(value?.contains('@') != true) {
                      return 'Некорректная почта';
                    }else {
                      return null;
                    }
                  },
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
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CommonButton(
                title: 'Pay',
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


