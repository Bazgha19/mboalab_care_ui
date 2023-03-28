// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mboalab_care_ui/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MboalabCare',
      home: WelcomeScreen(),
      theme: ThemeData(primarySwatch: Colors.brown),
    );
  }
}
