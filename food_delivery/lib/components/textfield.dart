import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  const CustomTextField({super.key,
  required this.hintText,
  required this.controller,
  required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
         decoration: InputDecoration(
          hintText: hintText,
           hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ), 
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.tertiary,
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.inversePrimary,
              )
            )      
         ),
        obscureText: obscureText,
      ),
    );
  }
}