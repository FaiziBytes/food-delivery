// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:food_delivery/components/button.dart';
import 'package:food_delivery/components/textfield.dart';
import 'package:food_delivery/homepage.dart';


// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
   void Function()? onTap;
   LoginPage({super.key,
   required this.onTap,
   });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   final TextEditingController emailController = TextEditingController();

   final TextEditingController passwordController = TextEditingController();

   void login(){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));
   }

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
          Button(onTap: (){
              login();            
          }, text: "Sign in",),
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
                onTap: widget.onTap,
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