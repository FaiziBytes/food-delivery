import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login_or_register.dart';


import 'package:food_delivery/themes/themeprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=> Themeprovider(),
    child: MyApp(),)
    
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),     
      theme: Provider.of<Themeprovider>(context).themeData,
    );
  }
}
