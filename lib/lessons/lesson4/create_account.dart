import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson3/lesson_func2.dart';
import 'package:untitled1/lessons/lesson4/widgets/auth_button.dart';
import 'package:untitled1/lessons/lesson4/widgets/have_an_account_button.dart';
import 'package:untitled1/lessons/lesson4/widgets/text_field_widget.dart';
import 'package:untitled1/lessons/lesson5/home_work4.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50),
              _letsText(),
              SizedBox(height: 10),
              _creatText(),
              SizedBox(
                height: 50,
              ),
              textFieldWidget(
                  icon: Icons.perm_identity, hintText: 'First Name', ),
              SizedBox(
                height: 20,
              ),
              textFieldWidget(icon: Icons.perm_identity, hintText: 'Last Name'),
              SizedBox(
                height: 20,
              ),
              textFieldWidget(icon: Icons.perm_identity, hintText: 'User Name'),
              SizedBox(
                height: 20,
              ),
              textFieldWidget(icon: Icons.email_outlined, hintText: 'Email'),
              SizedBox(
                height: 20,
              ),
              textFieldWidget(icon: Icons.lock_outline, hintText: 'Password', ),
              SizedBox(
                height: 20,
              ),
              textFieldWidget(
                  icon: Icons.lock_outline, hintText: 'Confirm Password'),
              SizedBox(height: 20),
              authButtonWidget(text: 'CREATE', onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LessonFunc2()));
              }),
              SizedBox(
                height: 20,
              ),
              haveAnAccountButton(
                  accountText: 'Already have an account?',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeWork4()));
                  },
                  buttonText: ' Login here'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _letsText() {
    return Text('Let\'s Get Started',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold));
  }

  Widget _creatText() {
    return Text('Create an account on MNZL to get all features',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey));
  }
}
