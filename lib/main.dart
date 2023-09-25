import 'package:flutter/material.dart';
import 'package:wytvalley/View/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WYTVALLEY",
      home: LandingScreen(),
    );
  }
}