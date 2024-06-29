import 'package:flutter/material.dart';

class Authbutton extends StatelessWidget {
  const Authbutton({
    super.key,
    required this.onTap,
    required this.title,
  });

  final void Function() onTap;
  final title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 100,
      splashColor: Colors.green[200],
      onTap:onTap,
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),
          ),
          const Spacer(),
          Icon(Icons.navigate_next_rounded,size: 70,color:Colors.white,),
        ],
      ),
    );
  }
}
