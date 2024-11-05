import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/lessons/lesson4/create_account.dart';
import 'package:untitled1/lessons/lesson4/widgets/auth_button.dart';

import '../lesson4/widgets/text_field_widget.dart';

class HomeWork4 extends StatefulWidget
{
  const HomeWork4({super.key});

  @override
  State<HomeWork4> createState() => _HomeWork4State();
}
class _HomeWork4State extends State<HomeWork4>
{
  TextEditingController textLogin = TextEditingController();
  TextEditingController textPassword = TextEditingController();

  int age = 0;
  String result  = '';

  void checkAge(){
    setState(() {
      result = age >= 18 ? 'Взрослый' : 'Подросток';
    });
  }

  final _formKey = GlobalKey<FormState>();

  String _errorText = '';

  bool validEmail({required String text})
  {
    if (text.length < 5) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              textFieldWidget(hintText: 'malina@gmail.com', icon: Icons.email_outlined, contr: textLogin),
              SizedBox(height: 20),
              textFieldWidget(icon: Icons.lock_outline, hintText: 'Password', contr: textPassword),
              SizedBox(height: 50,),
              authButtonWidget(text: 'press', onTap: (){
                if(validEmail(text: textLogin.text) && validEmail(text: textPassword.text)) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateAccount()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Неправильные данные!')));
                }
              }),
              SizedBox(height: 20,),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    age = int.tryParse(value) ?? 0;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Введите ваш возраст',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
