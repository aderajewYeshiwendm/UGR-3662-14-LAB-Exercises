import 'package:flutter/material.dart';
import 'l2.dart';
import 'exercise.dart';
import 'l3.dart';

void main() {
  runApp(const LAB1());
}

class LAB1 extends StatelessWidget {
  const LAB1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),

      // home: const HomePage(),
      // home: HomePage2(),
      home: App3(),
    );
  }
}
