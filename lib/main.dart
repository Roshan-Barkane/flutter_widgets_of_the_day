import 'package:flutter/material.dart';
import 'package:flutter_widgets_of_the_day/pages/spacer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  /* Spacer Widget is a provide the space between to widgets mostly used spacer at row and Colurmn in childers. */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hintColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SpacerWidget(),
    );
  }
}
