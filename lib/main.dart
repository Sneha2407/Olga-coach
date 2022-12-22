import 'package:flutter/material.dart';
import 'package:olga_coach/LoginPage.dart';
import 'package:olga_coach/mydash.dart';
import 'package:olga_coach/registerpage.dart';
import 'package:olga_coach/verification.dart';
import 'package:olga_coach/myplans.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyPlans(),
    );
  }
}
