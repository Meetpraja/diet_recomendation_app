import 'package:flutter/material.dart';

class PlanMealsScree extends StatefulWidget {
  const PlanMealsScree({super.key});

  @override
  State<PlanMealsScree> createState() => _PlanMealsScreeState();
}

class _PlanMealsScreeState extends State<PlanMealsScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('plan meals'),automaticallyImplyLeading: true,),
      body: Center(
        child: Text('plan meals'),
      ),
    );
  }
}
