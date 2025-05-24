// ignore_for_file: deprecated_member_use

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:food_delivery/themes/themeprovider.dart";
import "package:provider/provider.dart";

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color:Theme.of(context).colorScheme.tertiary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Dark mode"),
            CupertinoSwitch(value: Provider.of<Themeprovider>(context, listen: false).isDarkMode, onChanged: (value){
              Provider.of<Themeprovider>(context,listen: false).toggleTheme();
            },),
          ],
        ),
      ),
    );
  }
}