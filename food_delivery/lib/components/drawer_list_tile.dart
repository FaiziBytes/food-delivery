// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  String text;
  IconData icondata ;
  void Function()? onTap;
   DrawerListTile({super.key,
   required this.text,
   required this.icondata,
   required this.onTap,
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: ListTile(
       title: Text(text,
       style: TextStyle(
        fontSize: 15,
       ),
       ),
       leading: Icon(icondata),
       onTap: onTap,
      ),
    );
  }
}