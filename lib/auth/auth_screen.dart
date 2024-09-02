import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:untitled1/core/app_textstyle.dart';
import 'package:untitled1/screens/discover_screen.dart';

class  AuthScreen extends StatefulWidget {
  const AuthScreen ({
    required this.isRegistrationForm,
    this.isObscureText = false,
    super.key,
  });

  final bool isRegistrationForm;
  final bool isObscureText;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isRegistrationForm ? 'Register' : 'Log in', style: AppTextstyle.s36w400,),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Text( widget.isRegistrationForm ? 'Register' : 'Log in', style: AppTextstyle.s36w400,),
            const SizedBox(height: 32,),
            Form(
                key: _formKey,
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
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,)),
                      hintText: 'jane@example.com',
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:  BorderSide(),
                      )
                  ),
                )
            ),
            SizedBox(height: 20,),
            Form(
                key: _formKey2,
                child: TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if ((value?.length ?? 0) < 5){
                      return 'Слишком короткий пароль';
                    }else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,)),
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:  BorderSide(),
                      )
                  ),
                )
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DiscoverScreen()));
                        _formKey.currentState!.validate();
                        log('tap');
                      },
                      child: const Text('NEXT'),
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      )),
                    ),
                  
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
