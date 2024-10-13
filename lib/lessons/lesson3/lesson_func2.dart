import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LessonFunc2 extends StatefulWidget {
  const LessonFunc2({super.key});

  @override
  State<LessonFunc2> createState() => _LessonFunc2State();
}

class _LessonFunc2State extends State<LessonFunc2> {
  bool _abscureText = true;

  void show() {
    setState(() {
      _abscureText = !_abscureText;
    });
  }

  void func1(String name, String surname) {
    print('name: $name, surname: $surname');
  }

  void func2({required String name, required String surname}) {
    print('name: $name, surname: $surname');
  }

  String showName() {
    return 'Bermet';
  }

  String showName2({required String name}) {
    return name;
  }

  String? showName3({String? name}) {
    return name;
  }

  int showNumber() {
    return 10;
  }

  double showNumber2() {
    return 25.6;
  }

  bool showData() {
    return true;
  }

  Widget buildContainer(
      {required double height, required double width, required Color color}) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }

  InputBorder _border({required Color color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: color,
          width: 3,
        ));
  }

  TextField _textField(
      {required String text, Widget? suffixIcon, required IconData icon, bool show = false,}) {
    return TextField(
      obscureText: show,
      decoration: InputDecoration(
        // fillColor: Colors.green,
        // filled: true,
        focusedBorder: _border(color: Colors.green),
        errorBorder: _border(color: Colors.red),
        border: _border(color: Colors.cyan),
        disabledBorder: _border(color: Colors.indigoAccent),
        enabledBorder: _border(color: Colors.lime),
        prefixIcon: Icon(icon),
        suffixIcon: suffixIcon,
        hintText: text,
        helperText: text,
        // labelText:'password',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            TextField(
              obscureText: _abscureText,
              decoration: InputDecoration(
                // fillColor: Colors.green,
                // filled: true,
                focusedBorder: _border(color: Colors.green),
                errorBorder: _border(color: Colors.red),
                border: _border(color: Colors.cyan),
                disabledBorder: _border(color: Colors.indigoAccent),
                enabledBorder: _border(color: Colors.lime),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    show();
                  },
                  icon: _abscureText
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                ),
                hintText: 'password',
                helperText: 'password',
                // labelText:'password',
              ),
            ),
            Text(showName()),
            Text(
              showName2(name: 'Vadim'),
            ),
            Text('${showName3(name: 'Dariya')}'),
            ElevatedButton(
              onPressed: () {},
              child: Text('press'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildContainer(
                    height: 100, width: 40, color: Colors.deepPurple),
                buildContainer(height: 80, width: 80, color: Colors.blueAccent),
                buildContainer(height: 61, width: 100, color: Colors.lime),
              ],
            ),
            SizedBox(height: 15),
            _textField(text: 'email', icon: Icons.email, ),
            SizedBox(height: 15),
            _textField(text: 'name', icon: Icons.account_circle, ),
            SizedBox(height: 15),
            _textField(text: 'surname', icon: Icons.account_circle, ),
            SizedBox(height: 15),
            _textField(
              text: 'password',
              icon: Icons.lock_outline,
              suffixIcon: IconButton(
                onPressed: () {
                  show();
                },
                icon: _abscureText
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
              ),
              show: _abscureText,
            ),
          ],
        ),
      ),
    ));
  }
}
