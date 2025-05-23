// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:food_delivery/components/button.dart';
import 'package:food_delivery/components/textfield.dart';
// ignore: must_be_immutable
class Register extends StatelessWidget {
   void Function()? onTap;
   Register({super.key,
   required this.onTap});
   
  TextEditingController emailController = TextEditingController();
    TextEditingController password = TextEditingController();
      TextEditingController confirmPasswordController = TextEditingController();

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
          color: Theme.of(context).colorScheme.inversePrimary,),
          const SizedBox(height: 10,),
          Text("Let's create an account for you",),
          SizedBox(height: 15,),
          CustomTextField(hintText: "Email", controller: emailController, obscureText: false),
          SizedBox(height: 10,),
          CustomTextField(hintText: "Password", controller: emailController, obscureText: true),
          SizedBox(height: 10,),
          CustomTextField(hintText: "Confirm password", controller: emailController, obscureText: true),
          SizedBox(height: 15,),
          Button(onTap: (){}, text: "Sign up",),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Already have an account? "),
              GestureDetector(
              onTap: onTap,  
              child: Text("Login now",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              ),
              ),

            ],
          )
      ],),
    );
  }
}