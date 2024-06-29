import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
   Mytextfield({
    super.key,
    required this.hint,
    required this.controller,
  });

  var controller;
  final hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize:20,color: Colors.white),
      ),
    );
  }
}
