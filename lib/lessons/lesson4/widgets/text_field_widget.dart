import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



Widget textFieldWidget({required IconData icon, required String hintText
  , bool show = false,  TextEditingController? contr})
{
  return
    TextFormField(// key: _formKey,
      controller: contr,
      decoration: InputDecoration(
        border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(50)
        ),
        prefixIcon: Icon(icon),
        suffixIcon: Visibility(
          visible: show,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.visibility),
          ),
        ),
        hintText: hintText,
      ),
    );
}
