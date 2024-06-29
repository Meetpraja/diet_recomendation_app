import 'package:flutter/material.dart';

import 'package:dietrecommendation/components/authbutton.dart';
import 'package:dietrecommendation/components/mytextfield.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key,});


  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[50],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.green[50],
          // image: const DecorationImage(
          //   image: AssetImage('lib/assets/16/.jpg'),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Step Back Into Your \nHealthy Living',
              style: TextStyle(
                  color: Colors.green[900],
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Form(child:Column(
              children: [
                Mytextfield(hint: 'Email', controller: emailController),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Mytextfield(hint: 'Password', controller: passwordController),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Mytextfield(hint: 'Confirm Password', controller: passwordController),
              ],
            )),

            SizedBox(
              height: screenHeight * 0.06,
            ),
            Authbutton(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('login tapped')));
              },
              title: 'Signup',
            ),
            Row(
              children: [
                Text('already user ?',
                  style: TextStyle(fontSize: 20,color: Colors.green[900]),),
                const Spacer(),
                TextButton( child: Text('Login',style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[900]),
                ), onPressed: (){},),

              ],
            ),
            // Image(image: AssetImage('assets/back.jpg'),),
          ],
        ),
      ),
    );;
  }
}

