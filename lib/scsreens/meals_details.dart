import 'package:flutter/material.dart';

import '../model/meals_model.dart';

class MealsDetails extends StatelessWidget {
  const MealsDetails({super.key,required this.meal});
  final MealsModel meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 38, 24),
      appBar: AppBar(title: Text(meal.title),
        backgroundColor: Color.fromARGB(255, 31, 38, 24),
      foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                meal.url,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 14),
              Text(
                '- Ingradients',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const Divider(height: 2,color: Colors.white),
              const SizedBox(
                height: 14,
              ),
              for (final ingredient in meal.ingredients)
                Text(
                  '>  ${ingredient}',
                  style: const TextStyle(fontSize: 18,color: Colors.white70),
                ),
              const SizedBox(height: 14),
              Text(
                '- Steps',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const Divider(height: 2,color: Colors.white,),
              const SizedBox(
                height: 14,
              ),
              for (final steps in meal.steps)
                Text(
                  '>  ${steps}',
                  style: const TextStyle(fontSize: 18,color: Colors.white70),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
