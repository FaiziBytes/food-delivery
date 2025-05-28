import 'package:flutter/material.dart';

class Mydescription extends StatelessWidget {
  const Mydescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 40),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        
        border: Border.all(color: Theme.of(context).colorScheme.tertiary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("0.99"),
              Text("Delivery Fee"),
            ],
          ),
             Column(
            children: [
              Text("15-20 min"),
              Text("Delivery Time"),
            ],
          ),
        ],
      ),
    );
  }
}