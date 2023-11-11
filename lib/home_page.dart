import 'dart:math' as math;
import 'package:flutter/material.dart';

/// main screen
class HomePage extends StatefulWidget {
  /// widget init
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
 Color backgroundColor = const Color(0xFFFFFFFF);


 void changeColor(){
   const double startNumber = 0xFFFFFFFF;
   setState(() {
  backgroundColor = Color((math.Random().nextDouble() * startNumber).toInt());
 });
 }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap:changeColor,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: const Center(
            child: Text(
              'Hello there',
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
