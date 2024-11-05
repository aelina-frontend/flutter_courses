import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson4/widgets/auth_button.dart';
import 'package:untitled1/lessons/lesson4/widgets/have_an_account_button.dart';
import 'package:untitled1/lessons/lesson4/widgets/text_field_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 290),
              _welcomeText(),
              SizedBox(height: 18),
              _loginText(),
              SizedBox(
                height: 50,
              ),
              textFieldWidget(icon: Icons.perm_identity, hintText: 'Username'),
              SizedBox(
                height: 25,
              ),
              textFieldWidget(icon: Icons.lock_outline, hintText: 'Password', show: true,),
              SizedBox(
                height: 7,
              ),
              _forgotPasswordButton(),
              SizedBox(height: 32),
              authButtonWidget(text: 'LOG IN', onTap: (){}),
              SizedBox(
                height: 20,
              ),
              haveAnAccountButton(
                  accountText: 'Don’t have an account?',
                  onPressed: () {},
                  buttonText: ' Sign Up'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _welcomeText() {
    return Text('Welcome Back',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold));
  }

  Widget _loginText() {
    return Text('Log in to existing LOGO account',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey));
  }

  Widget _forgotPasswordButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text('Forgot Password?'),
      ),
    );
  }

}
