import 'package:dietrecommendation/components/authbutton.dart';
import 'package:dietrecommendation/components/mybutton.dart';
import 'package:dietrecommendation/components/mytextfield.dart';
import 'package:dietrecommendation/scsreens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key
  });


  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

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
            color: Color.fromARGB(255, 31, 38, 24),
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
              Form(child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  Mytextfield(hint: 'Email', controller: emailController,isSecure: false,),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Mytextfield(hint: 'Password', controller: passwordController,isSecure: true,),
                  SizedBox(
                    height: screenHeight * 0.06,
                  ),
                ],
              )),
              Authbutton(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('login tapped')));
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                title: 'login',
              ),
              Row(
                children: [
                  const Text('don\'t have an account ?',
                  style: TextStyle(fontSize: 20,color: Colors.white70),),
                  const Spacer(),
                  TextButton(
                    onPressed: (){}, child: const Text('Login',style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70),
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
