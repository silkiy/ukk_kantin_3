import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  const InputField({
    super.key,
    required this.hintText,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: hintText,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
