// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:food_delivery/components/button.dart';
import 'package:food_delivery/components/textfield.dart';


class LoginPage extends StatelessWidget {
   LoginPage({super.key});
   final TextEditingController emailController = TextEditingController();
   final TextEditingController passwordController = TextEditingController();
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.lock_open_rounded,
          size: 100,
          color:Theme.of(context).colorScheme.inversePrimary ,),
          const SizedBox(height: 10,),
          Text("Food Delivery App",
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          ),
          const SizedBox(height: 10,),
          CustomTextField(hintText: "Email", controller: emailController, obscureText: false),
          SizedBox(height: 10,),
          CustomTextField(hintText: "Password", controller: passwordController, obscureText: true),
          SizedBox(height: 15,),
          Button(onTap: (){print("Signed in");},),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Not a member?",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              ),
              GestureDetector(
                onTap: (){
                  print("clicked");
                },
                child: Text(" Register now",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}