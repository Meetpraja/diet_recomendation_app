import 'package:dietrecommendation/scsreens/auth/login_screen.dart';
import 'package:dietrecommendation/scsreens/auth/signup_screen.dart';
import 'package:dietrecommendation/components/mybutton.dart';
import 'package:flutter/material.dart';

class SignupLogin extends StatelessWidget {
  const SignupLogin({super.key});

  @override
  Widget build(BuildContext context) {

    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;


    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: Colors.green[100]
          ),
          height: screenheight,
          width: screenwidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenheight/6,
              ),
              Text(
                  'Fuel Your Life \nWith the Right Diet',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
              ),
              SizedBox(height: screenheight*0.5,),
              Mybutton(title: 'Login', onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
              }),
              SizedBox(height: screenheight*0.02,),
              Mybutton(title: 'Signup', onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupScreen()));
              })
            ],
          ),
        ),

    );
  }
}