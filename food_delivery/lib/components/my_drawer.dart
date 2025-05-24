// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:food_delivery/components/drawer_list_tile.dart';
import 'package:food_delivery/settings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          SizedBox(height: 80,),
          Icon(Icons.lock_open, 
          size: 90,
          color: Theme.of(context).colorScheme.inversePrimary),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 3,
              height: 24,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          SizedBox(height: 10,),
          DrawerListTile(text: "H O M E", icondata: Icons.home, onTap: (){
            Navigator.pop(context);
          }),
          DrawerListTile(text: "S E T T I N G S", icondata: Icons.settings, onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsPage()));
          }),
          const Spacer(),
          DrawerListTile(text: "L O G O U T", icondata: Icons.logout, onTap: (){}),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}