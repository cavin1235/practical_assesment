import 'package:assesment/screens/count_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practical Exam',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const ListingScreen(),
    );
  }
}
