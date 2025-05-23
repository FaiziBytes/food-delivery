import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  VoidCallback onTap;
  String? text;
  Button({super.key,
  required this.onTap,
  required this.text
  });

  @override
  Widget build(BuildContext context) {
    return 
      GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          color: Theme.of(context).colorScheme.tertiary,
          height: 45,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(text!,
             style: TextStyle(
              fontSize: 17,
              color: Theme.of(context).colorScheme.inversePrimary,
             ),
            ),
          ),
              ),
    );
  }
}