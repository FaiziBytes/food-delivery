import "package:flutter/material.dart";

class TextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const TextField({super.key,
  required this.hintText,
  required this.controller,
  required this.obscureText,
  }
  );
  

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
         ),
        obscureText: obscureText,
      ),
    );
  }
}