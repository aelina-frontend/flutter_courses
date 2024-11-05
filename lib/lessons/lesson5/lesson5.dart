import 'package:flutter/material.dart';

class Lesson5 extends StatefulWidget {
  const Lesson5({super.key});

  @override
  State<Lesson5> createState() => _Lesson5State();
}

class _Lesson5State extends State<Lesson5> {
  // == равны друг другу, != не равны друг другу, >, < , >=, <=, &&,||
  int age = 18;

  void check() {
    if (age >= 18) {
      print('you are an adult');
    } else {
      print('you are a junior');
    }
  }

  String userName = 'Admin';

  void checkString() {
    if (userName == 'admin') {
      print('Hello admin');
    } else {
      print('hello user');
    }
  }

  int number = 7;

  void checkInt() {
    if (number > 10) {
      print('number > 7');
    } else if (number > 5) {
      print('number greater than 5 less then ten');
    } else {
      print('цифра меньше чем 5');
    }
  }

  void checkInt2(int number) {
    if (number > 10) {
      print('number > 7');
    } else if (number > 5) {
      print('number greater than 5 less then ten');
    } else {
      print('цифра меньше чем 5');
    }
  }

  void checkInt3({required int a, required int b}) {
    if (a == b) {
      print('a = b');
    } else if (a > b) {
      print('$a > $b');
    } else if (a < b) {
      print('$a < $b');
    } else {
      print('a и b не равны');
    }
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController comfirmPasswordController = TextEditingController();

  void emailCheck() {
    if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('email is not be empty')));
    } else if (!emailController.text.contains('@')) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('email должен содержать @')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Вы успешно зарегистрировались')));
    }
  }

  void passwordCheck() {
    if (passwordController.text.isEmpty &&
        comfirmPasswordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:
              Text('Пароль и подтверждения пароля не должны быть пустыми')));
    }else if(passwordController.text != comfirmPasswordController){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Пароль и подтверждения пароля должны быть равны')));
    }else if(passwordController.text.length >= 8){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Пароль должен содержать не меньше 8 символов')));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Вы успешно вошли')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  // check();
                  // checkString();
                  // checkInt();
                  // checkInt2(15);
                  // checkInt2(9);
                  checkInt3(a: 4, b: 4);
                  checkInt3(a: 18, b: 50);
                },
                child: Text('check'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: comfirmPasswordController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              ElevatedButton(
                  onPressed: () {
                    // emailCheck();
                    passwordCheck();
                  },
                  child: Text('Log In')),
            ],
          ),
        ),
      ),
    );
  }
}
