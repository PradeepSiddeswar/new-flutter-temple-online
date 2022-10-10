// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:templ_online/screens/Dio_screen.dart';
import 'package:templ_online/screens/admin_screen.dart';
import 'package:templ_online/screens/api_screen.dart';
// import 'package:templ_online/screens/dropdow.dart';
import 'package:templ_online/screens/home_screen.dart';
import 'package:templ_online/screens/screen.dart';
import 'package:templ_online/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    // primarySwatch: Color(0xFFFFFFFF)
          ),
      home: Center(
          child: const MyHomePage(
        title: 'Templ.',

      )),
      //  home: const Screen(),
    );
  }
}
