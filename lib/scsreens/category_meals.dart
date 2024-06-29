import 'package:dietrecommendation/blank_image.dart';
import 'package:flutter/material.dart';

import '../data/meals_data.dart';
import '../model/meals_model.dart';
import 'meals_details.dart';

class CategoryMeals extends StatelessWidget {
  const CategoryMeals({super.key,required this.meals});
  final List<MealsModel> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 38, 24),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 38, 24),
        foregroundColor: Colors.white,
      ),
      body:Container(
        height: 150,
        width: 150,
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              Text('hello',style: TextStyle(color: Colors.white70),);
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              //   child:GestureDetector(
              //       onTap: () {
              //         Navigator.of(context).push(MaterialPageRoute(
              //             builder: (context) => MealsDetails(meal: meals[index])));
              //       },
              //       child: Card(
              //         margin: const EdgeInsets.all(5),
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(8)),
              //         clipBehavior: Clip.hardEdge,
              //         elevation: 2,
              //         child: Stack(
              //             children: [
              //               FadeInImage(
              //                   placeholder: MemoryImage(kTransparentImage),
              //                   image: NetworkImage(meals[index].url),
              //                 fit: BoxFit.cover,
              //                 height: double.infinity,
              //                 width: double.infinity,
              //               ),
              //               // Image.network(
              //               //   meals[index].url,
              //               //   height: double.infinity,
              //               //   width: double.infinity,
              //               //   fit: BoxFit.cover,
              //               // ),
              //               Positioned(
              //                 bottom: 0,
              //                 left: 0,
              //                 right: 0,
              //                 child: Container(
              //                   color: Colors.black54,
              //                   padding: const EdgeInsets.symmetric(
              //                       vertical: 5, horizontal: 0),
              //                   child: Column(
              //                     children: [
              //                       Text(
              //                         meals[index].title,
              //                         maxLines: 2,
              //                         textAlign: TextAlign.center,
              //                         softWrap: true,
              //                         overflow:
              //                         TextOverflow.ellipsis,
              //                         style: const TextStyle(
              //                           fontSize: 20,
              //                           fontWeight: FontWeight.bold,
              //                           color: Colors.white,
              //                         ),
              //                       ),
              //                       const SizedBox(
              //                         height: 5,
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              // );
            },
          ),
      ),
    );
  }
}
