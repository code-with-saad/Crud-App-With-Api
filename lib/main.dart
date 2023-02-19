import 'package:api_second_class/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'On Boarding Screen',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

