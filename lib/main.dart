import 'package:flutter/material.dart';
import 'package:solidtest/home_page.dart';

void main() {
  runApp(const MyApp());
}
///main app
class MyApp extends StatelessWidget {
  ///main app init
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
