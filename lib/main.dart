import 'package:cross_platform/screens/HomeScreen/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(CrossPlatApp());
}

class CrossPlatApp extends StatelessWidget {
  const CrossPlatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cross Plateform App',
      home: HomeScreen(),
    );
  }
}
