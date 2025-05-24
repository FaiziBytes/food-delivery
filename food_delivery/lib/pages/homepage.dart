// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        title: Text("Home"),
        centerTitle: true,
      ),
      drawer: CustomDrawer(),
    );
  }
}