

import 'package:auth/components/my_button.dart';
import 'package:auth/components/square_time.dart';
import 'package:auth/components/textfield.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
   Loginpage({super.key});

   //text editing controller
    final userNameController = TextEditingController();
    final passwordController = TextEditingController();

    //sign user in method
    void signUserIn(){}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const  SizedBox(height: 50),

              //logo
              const Icon(Icons.lock,
              size : 100),
              
              const SizedBox(height : 20),

              //welcome back! you have been missed.
               Text("Welcome back! you have been missed!",
              style: TextStyle(
                color : Colors.grey[700],
                fontSize : 16,
              )
              ),
              
              const SizedBox(height: 20),
              //user textfield
              Mytextfield(
                controller: userNameController,
                hintText:"Username",
                obscuredText: false ,

              ),
              
              const SizedBox(height: 20),
              //password textfield
              Mytextfield(
                controller: passwordController,
                hintText: "Password",
                obscuredText: true,
              ),

              const SizedBox(height: 20),
              //forget password?
              Padding(
                padding: const  EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password?',
                    style: TextStyle(
                      color: Colors.grey[600]
                     )
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              //sign in button
              MyButton(
                onTap: signUserIn ,

              ),

              const SizedBox(height: 20),
              
              //or continue with

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color : Colors.grey[400],
                    )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10),
                      child: Text("or continue with",
                      style: TextStyle(
                        color:  Colors.grey[700],
                      )
                      )
                    ),
                    Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color : Colors.grey[400],
                    )
                    ),
                  ]
                ),
              ),

              const SizedBox(height: 30),
              
              //google + apple sign in button
             const  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button

                  SquareTime(imagePath: "lib/images/googlelogo.png"),

                  SizedBox(width: 25),
                  
                  //apple button
                  SquareTime(imagePath: "lib/images/applogo.png"),
                ],
              ),

              const SizedBox(height: 30),
              
              //not a member?
              //register now

             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?",
                  style: TextStyle(
                    color: Colors.grey[600],

                  )),
                const SizedBox( width: 10),
                const Text ("Register now",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  )
                 )
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}