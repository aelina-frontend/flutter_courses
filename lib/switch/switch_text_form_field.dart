import 'package:flutter/material.dart';


class SwitchTextFormField extends StatefulWidget {
  final String hintText;
  final ValueChanged<bool> onSwitchChanged;

  const SwitchTextFormField({
    Key? key,
    required this.hintText,
    required this.onSwitchChanged,
  }) : super(key: key);

  @override
  _SwitchTextFormFieldState createState() => _SwitchTextFormFieldState();
}

class _SwitchTextFormFieldState extends State<SwitchTextFormField> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: Switch(
        value: _switchValue,
        onChanged: (value) {
          setState(() {
            _switchValue = value;
            widget.onSwitchChanged(value);
          });
        },
      ),
    ),
    );
  }
}