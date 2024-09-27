import 'package:flutter/material.dart';

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
                  child: CommonButton(
                      title: 'lOG IN',
                      onTap: () {
                        Navigator.of(context).pushNamed('/firstScreen');
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
