// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_current_address.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_silver_app_bar.dart';
import 'package:food_delivery/components/mydescription.dart';
import 'package:food_delivery/components/tabbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late TabController myTabcontroller;
  @override
  void initState() {
    myTabcontroller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    myTabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(myTabController: myTabcontroller),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  thickness: 2,
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                MyCurrentAddress(),
                Mydescription()
              ],
            ),
          ),
        ],
        body: TabBarView(
          
          controller: myTabcontroller, children: [
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
                return Text("Coplor");
          }),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (
                context, index) {
               return Text("Color");
          }),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (
              
              context, index) {
            return Text("Color");
          }),
        ]),
      ),
    );
  }
}
