import 'package:dietrecommendation/model/meals_model.dart';
import 'package:dietrecommendation/scsreens/auth/signup_login.dart';
import 'package:dietrecommendation/scsreens/auth/signup_screen.dart';
import 'package:dietrecommendation/scsreens/bmi_screen.dart';
import 'package:dietrecommendation/scsreens/category_meals.dart';
import 'package:dietrecommendation/scsreens/meals_details.dart';
import 'package:dietrecommendation/scsreens/plan_meals_scree.dart';
import 'package:dietrecommendation/scsreens/your_meal_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dietrecommendation/data/meals_data.dart';

import 'package:dietrecommendation/components/carouse_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<MealsModel> mealList = dummyDataWeightLoss;

  int _currentIndex = 0;
  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

        backgroundColor: const Color.fromARGB(150, 31, 38, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green[600]),
              child: const Icon(Icons.person),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ListTile(
                title: const Text(
                  'Y O U R  M E A L S',
                  style: TextStyle(fontSize: 20,color: Colors.white,),
                ),
                trailing: const Icon(
                  color: Colors.white,
                  Icons.navigate_next_rounded,
                  size: 30,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => YourMealScreen()));
                },
              ),
            ),
            Divider(
              height: 20,
              color: Colors.green[600],
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ListTile(
                title: const Text(
                  'P L A N  M E A L S',
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                trailing: const Icon(
                  color: Colors.white,
                  Icons.navigate_next_rounded,
                  size: 30,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PlanMealsScree()));
                },
              ),
            ),
            Divider(
              height: 20,
              color: Colors.green[600],
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ListTile(
                title: const Text(
                  'B M I ',
                  style: TextStyle(fontSize: 20,color: Colors.white,),
                ),
                trailing: const Icon(Icons.navigate_next_rounded,color: Colors.white,),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BmiScreen()));
                },
              ),
            ),
            Divider(
              height: 20,
              color: Colors.green[600],
              thickness: 3,
            ),
            const Spacer(),
            Divider(
              height: 20,
              color: Colors.green[600],
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: ListTile(
                title: const Text(

                  'L O G O U T',
                  style: TextStyle(fontSize: 30,color: Colors.white,),
                ),
                leading: const Icon(
                  color: Colors.white,
                  Icons.logout,
                  size: 30,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pop(context);
          }, icon: Icon(Icons.navigate_before))
        ],
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(150, 31, 38, 24),
        title: const Text(
          'hello..name',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(150, 31, 38, 24),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: CarouselSlider(
                  carouselController: controller,
                  items: [
                    Container(
                      height: 180,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CategoryMeals(meals: dummyDataWeightLoss)));
                          },
                          child: const CarouseItem(
                            title: 'WeightLoss',
                            url: 'https://articles-1mg.gumlet.io/articles/wp-content/uploads/2016/10/weight-loss.jpg?compress=true&quality=80&w=640&dpr=2.6',
                          )),
                      // child: ClipRRect(
                      // borderRadius: BorderRadius.circular(15),
                      // child: Image.asset('assets/3.jpg',fit: BoxFit.cover,)),
                    ),
                    Container(
                      height: 180,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CategoryMeals(meals: dummyDataWeightMaintain)));
                          },
                          child: const CarouseItem(
                            title: 'weightMaintain',
                            url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNYh9Ln7Lm-yKQZRw3MNOX9SeD32zPiKe-6g&s',
                          )),
                      // child: ClipRRect(
                      // borderRadius: BorderRadius.circular(15),
                      // child: Image.asset('assets/4.jpg',fit: BoxFit.cover,)),
                    ),
                    Container(
                      height: 180,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CategoryMeals(meals: dummyDataWeightGain)));
                          },
                          child: CarouseItem(
                            title: 'WeightGain',
                            url: 'https://media.post.rvohealth.io/wp-content/uploads/2019/02/Muscular-Hypertrophy-and-Your-Workout_1200x628-facebook.jpg',
                          )),
                      // child: ClipRRect(
                      // borderRadius: BorderRadius.circular(15),
                      // child: Image.asset('assets/3.jpg',fit: BoxFit.cover,)),
                    ),
                  ],
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    // // animateToClosest: true,
                    viewportFraction: 0.7,
                    aspectRatio: 2.0,
                    height: 180,
                    autoPlay: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 600),
                    onPageChanged: (index, reason) {
                      controller.jumpToPage(index);
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              DotsIndicator(
                dotsCount: 3,
                position: _currentIndex,
                onTap: (int i) {
                  setState(() {
                    _currentIndex = i;
                    controller.jumpToPage(i);
                  });
                },
                decorator: DotsDecorator(
                    color: Colors.grey,
                    activeColor: Colors.blueAccent,
                    size: const Size.square(10),
                    activeSize: const Size(18, 10),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/back.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12)),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 44),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                          child: Text(
                                        'Know your numbers,\n Know yourself!',
                                        style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.green[100],
                                        ),
                                        textAlign: TextAlign.center,
                                      )),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 50,
                                        ),
                                        child: Divider(
                                          thickness: 2,
                                          color: Colors.green[200],
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const BmiScreen()));
                                        },
                                        child: Text(
                                          'Calculate BMI',
                                          style: TextStyle(
                                              fontSize: 32,
                                              color: Colors.green[50]),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // Positioned(
                                //   bottom: 0,
                                //   left: 0,
                                //   right: 0,
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //         color: Colors.black54,
                                //         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                                //     ),
                                //
                                //     padding:
                                //     const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                                //     child: const Column(
                                //       children: [
                                //         Text(
                                //           'products',
                                //           maxLines: 2,
                                //           textAlign: TextAlign.center,
                                //           softWrap: true,
                                //           overflow: TextOverflow.ellipsis,
                                //           style: const TextStyle(
                                //             fontSize: 20,
                                //             fontWeight: FontWeight.bold,
                                //             color: Colors.white,
                                //           ),
                                //         ),
                                //         const SizedBox(
                                //           height: 5,
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                            // Stack(
                            //   children: [
                            //     const Image(
                            //       image: AssetImage('assets/back.jpg',),
                            //       fit: BoxFit.cover,
                            //       width: double.infinity,
                            //       height: 220,
                            //     ),
                            //     Positioned(
                            //       bottom: 0,
                            //       left: 0,
                            //       right: 0,
                            //       child: Container(
                            //         color: Colors.black54,
                            //         padding:
                            //         const EdgeInsets.symmetric(vertical: 5, horizontal: 44),
                            //         child: Column(
                            //           children: [
                            //           Container(
                            //             margin: const EdgeInsets.symmetric(horizontal: 18),
                            //             child: Column(
                            //               crossAxisAlignment: CrossAxisAlignment.center,
                            //               mainAxisAlignment: MainAxisAlignment.center,
                            //               children: [
                            //                 Center(
                            //                     child: Text(
                            //                       'Know your numbers,\n Know yourself!',
                            //                       style: TextStyle(
                            //                         fontSize: 25,
                            //                         color: Colors.green[100],
                            //                       ),
                            //                       textAlign: TextAlign.center,
                            //                     )),
                            //                 Padding(
                            //                   padding: EdgeInsets.symmetric(
                            //                     horizontal: 50,
                            //                   ),
                            //                   child: Divider(
                            //                     thickness: 2,
                            //                     color: Colors.green[200],
                            //                   ),
                            //                 ),
                            //                 TextButton(
                            //                   onPressed: () {
                            //                     Navigator.of(context).push(MaterialPageRoute(
                            //                         builder: (context) => const BmiScreen()));
                            //                   },
                            //                   child: Text(
                            //                     'Calculate BMI',
                            //                     style: TextStyle(
                            //                         fontSize: 32, color: Colors.green[50]),
                            //                   ),
                            //                 )
                            //               ],
                            //             ),
                            //           ),
                            //             // Text(
                            //             //   'products',
                            //             //   maxLines: 2,
                            //             //   textAlign: TextAlign.center,
                            //             //   softWrap: true,
                            //             //   overflow: TextOverflow.ellipsis,
                            //             //   style: const TextStyle(
                            //             //     fontSize: 20,
                            //             //     fontWeight: FontWeight.bold,
                            //             //     color: Colors.white,
                            //             //   ),
                            //             // ),
                            //             const SizedBox(
                            //               height: 5,
                            //             ),
                            //           ],
                            //         ),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                          ))
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'you may like...',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.green[50],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 800,
                      width: 400,
                      child:
                      GridView.builder(
                        itemCount: dummyDataWeightMaintain.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5),
                          itemBuilder: (context, index) {
                          MealsModel meal = dummyDataWeightMaintain[index];
                            return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => MealsDetails(meal: meal)));
                                },
                                child: Card(
                                  margin: const EdgeInsets.all(5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  clipBehavior: Clip.hardEdge,
                                  elevation: 2,
                                  child: InkWell(
                                    // onTap: (){
                                    //   onMealSelect(context,meal);
                                    // },
                                    child: Stack(
                                      children: [
                                        Image.network(
                                          meal.url,
                                          height: double.infinity,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          left: 0,
                                          right: 0,
                                          child: Container(
                                            color: Colors.black54,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 0),
                                            child: Column(
                                              children: [
                                                Text(
                                                  meal.title,
                                                  maxLines: 2,
                                                  textAlign: TextAlign.center,
                                                  softWrap: true,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                 const SizedBox(
                                                  height: 5,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
