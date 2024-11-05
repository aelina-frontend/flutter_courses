import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController comfirmController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _textFormFieldWidget(
                    labelText: 'email',
                    controller: emailController,
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return 'Пожалуйста введите емайл';
                      }
                      if (!email.contains('@')) {
                        return 'Пожалуйста добавьте @';
                      }
                      return null;
                    }),
                SizedBox(
                  height: 10,
                ),
                _textFormFieldWidget(
                    labelText: 'password',
                    controller: passwordController,
                    validator: (password) {
                      if (password == null || password.isEmpty) {
                        return 'Пожалуйста введите пароль';
                      }
                      if (password.length < 6) {
                        return 'Пароль должен быть больше 6';
                      }
                      return null;
                    }),
                SizedBox(
                  height: 10,
                ),
                _textFormFieldWidget(
                    labelText: 'confirm password',
                    controller: comfirmController,
                    validator: (comfirmPassword) {
                      if (comfirmPassword == null || comfirmPassword.isEmpty) {
                        return 'Пароль и подтверждение пароля должен быть пустым';
                      }
                      if (comfirmPassword.length < 8) {
                        return 'Пароль должен быть больше 6';
                      }
                      if (comfirmPassword != passwordController.text) {
                        return 'Пароль и подтверждение пароля не должны быть одинаковыми';
                      }
                      if(comfirmPassword.length >= 10){}
                      return null;
                    }),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Вы успешно зарегистрировались'),
                      ));
                    }
                  },
                  child: Text('Registration'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFormFieldWidget(
      {required String labelText,
      required TextEditingController controller,
      required String? Function(String?)? validator}) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}
