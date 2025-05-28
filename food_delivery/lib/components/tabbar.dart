// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController myTabController;
  const MyTabBar({super.key,
  required this.myTabController
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
         
        labelColor: Theme.of(context).colorScheme.inversePrimary,
        indicatorColor: Theme.of(context).colorScheme.inversePrimary,
        dividerColor: Theme.of(context).colorScheme.background,
        controller: myTabController,
        tabs: [
        Icon(Icons.home,
        size: 15,
        
        ),
        Icon(Icons.settings,size: 15,),
        Icon(Icons.person,
        size: 15,
        ),
      ]),
    );
  }
}