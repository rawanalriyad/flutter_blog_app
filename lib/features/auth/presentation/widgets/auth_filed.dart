import 'package:flutter/material.dart';

class AuthFiled extends StatelessWidget {
  final bool isObscuretext;
  final TextEditingController controller;
  final String hintText;
  const AuthFiled(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isObscuretext = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText),
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText Please enter a value';
        }
        return null;
      },
      obscureText: true,
      obscuringCharacter: '.',
      controller: controller,
    );
  }
}
