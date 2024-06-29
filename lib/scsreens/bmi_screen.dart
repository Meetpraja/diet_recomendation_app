import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('BMI calculator'),
      ),
      body: const Center(
        child: Text('bmi screen',style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
