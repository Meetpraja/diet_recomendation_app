import 'package:flutter/material.dart';

class YourMealScreen extends StatefulWidget {
  const YourMealScreen({super.key});

  @override
  State<YourMealScreen> createState() => _YourMealScreenState();
}

class _YourMealScreenState extends State<YourMealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('your meals'),automaticallyImplyLeading: true,),
      body: Center(
        child: Text('your meals'),
      ),
    );
  }
}
