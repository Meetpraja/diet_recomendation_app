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
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 31, 38, 24),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          height: screenHeight,
          width: screenWidth,
          decoration: const BoxDecoration(
            color:Color.fromARGB(255, 31, 38, 24),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Step Back Into Your \nHealthy Living',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Form(child:Column(
                children: [
                  Mytextfield(hint: 'Email', controller: emailController,isSecure: false,),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Mytextfield(hint: 'Password', controller: passwordController,isSecure: true,),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Mytextfield(hint: 'Confirm Password', controller: passwordController,isSecure: true,),
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
                  const Text('already user ?',
                    style: TextStyle(fontSize: 20,color: Colors.white70),),
                  const Spacer(),
                  TextButton( child: const Text('Login',style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70),
                  ), onPressed: (){},),
        
                ],
              ),
              // Image(image: AssetImage('assets/back.jpg'),),
            ],
          ),
        ),
      ),
    );;
  }
}

