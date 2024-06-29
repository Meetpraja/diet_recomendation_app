import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({
    super.key,
    required this.title,
    required this.onTap,
  });

  final void Function() onTap;
  final title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.green,
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          color : Colors.green[400],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
