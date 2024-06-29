import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
   Mytextfield({
    super.key,
    required this.hint,
    required this.controller,
     required this.isSecure,
  });

  var controller;
  final hint;
  final bool isSecure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecure,
      style: TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize:20,color: Colors.white),
      ),
    );
  }
}
