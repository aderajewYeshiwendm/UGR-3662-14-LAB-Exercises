import 'package:flutter/material.dart';
import 'l2.dart';
import 'exercise.dart';
// import 'container_1.dart';
// // import 'package:widgets/google_fonts.dart';

// import 'image.dart';
// import 'row_and_column.dart';
// import 'stateless_widget_1.dart';

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
      // home: const RowAndColumn(),
      // home: const Images(),
      // home: const Fonts(),
      // home: const Container1(),
      // home: const StatelessWidget1(
      //   title: 'Scaffold Widget',
      // ),
      // home: const Text('First Material App'),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Scaffold Widget'),
      //   ),
      //   body: const Text('Exploring Scaffold Widget'),
      // ),
      // home: const HomePage(),
      home: HomePage2(),
    );
  }
}
