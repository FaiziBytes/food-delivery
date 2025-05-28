// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";



class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
   const MySilverAppBar({super.key,
   required this.child,
   required this.title
   });

   
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      backgroundColor:  Theme.of(context).colorScheme.background,
      title: Text("Sunset Dinner"),
      centerTitle: true,
      expandedHeight: 320,
      pinned: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(Icons.shopping_cart),
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        titlePadding: EdgeInsets.only(bottom: 0),
        background: child,
        centerTitle: true,
        
      ),
     
    );
  }
} 