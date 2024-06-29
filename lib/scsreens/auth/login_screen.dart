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
        backgroundColor: Color.fromARGB(255, 31, 38, 24),
        title: const Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 31, 38, 24),
          // image: const DecorationImage(
          //   image: AssetImage('assets/back.jpg'),
          //   fit: BoxFit.cover,
          //   opacity: 0.7,
          //   colorFilter: ColorFilter.mode(Colors.black12, BlendMode.)
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Step Back Into Your \nHealthy Living',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Mytextfield(hint: 'Email', controller: emailController),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Mytextfield(hint: 'Password', controller: passwordController),
            SizedBox(
              height: screenHeight * 0.06,
            ),
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
                Text('don\'t have an account ?',
                style: TextStyle(fontSize: 20,color: Colors.white),),
                const Spacer(),
                TextButton(
                  onPressed: (){}, child: Text('Login',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white),
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
