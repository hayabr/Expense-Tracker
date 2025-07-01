import 'package:flutter/material.dart';
import 'package:expensess/screens/home.dart';
import 'package:expensess/widgets/bottom.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bootom(),
      
    );
  }
}