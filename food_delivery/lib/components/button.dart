import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  VoidCallback onTap;
  Button({super.key,
  required this.onTap
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
            child: Text("Sign in",
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