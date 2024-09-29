import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/app_textslyle.dart';
import '../core/common/common_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen(this.isRegistrationForm, this.isObscureText, {super.key});

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
        title: Text(widget.isRegistrationForm ? 'Sign In' : 'Sign Up', style: AppTextstyle.s13w800,),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),

          child: Column(
            children: [
              // Text( widget.isRegistrationForm ? 'Register' : 'Log in', style: AppTextstyle.s36w400,),
              const SizedBox(height: 70,),
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
                        hintText: 'Loremipsum@gmail.com',
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
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:  BorderSide(),
                        )
                    ),
                  )
              ),
              SizedBox(height: 20,),
                    CommonButton(
                        title: 'Log In',
                        isWhite: false,
                        onTap: () {
                          Navigator.of(context).pushNamed('/firstScreen');
                        }
                        ),
                    SizedBox(height: 20,),
                    Text('OR', style: AppTextstyle.s36w300,),
              SizedBox(height: 20,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 60),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.black,
                          width: 2)),
                  backgroundColor: Colors.white,),
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.google,color: Colors.indigo,
                      size: 23,
                    ),
                    SizedBox(width: 40,),
                    Text(
                      'Continue With Google',
                      style: TextStyle(fontSize: 20, fontFamily: 'Imprima', fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 60),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.black,
                          width: 2)),
                  backgroundColor: Colors.white,),
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.facebook,color: Colors.indigo,
                      size: 26,
                    ),
                    SizedBox(width: 40,),
                    Text(
                      'Continue With Facebook',
                      style: TextStyle(fontSize: 20, fontFamily: 'Imprima', fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Don\'t have an account yet?', style: TextStyle(fontSize: 18, fontFamily: 'Inter', fontWeight: FontWeight.w300, color: Colors.black),),
                  Spacer(),
                  TextButton(onPressed: (){},
                    child: Text('SIGN UP', style: TextStyle(fontSize: 14, fontFamily: 'Inter', fontWeight: FontWeight.w700, color: Colors.orange),),
                  ),
                ],
              ),

            ],
          ),
        ),
        ),
      ),
    );
  }
}
