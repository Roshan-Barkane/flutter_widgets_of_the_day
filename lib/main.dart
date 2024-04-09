import 'package:flutter/material.dart';
//import 'package:flutter_widgets_of_the_day/pages/fadetrasition.dart';
import 'package:flutter_widgets_of_the_day/pages/floatactionbutton.dart';
//import 'package:flutter_widgets_of_the_day/pages/futurebuilder.dart';
//import 'package:flutter_widgets_of_the_day/pages/animationcontainer.dart';
//import 'package:flutter_widgets_of_the_day/pages/expanded.dart';
//import 'package:flutter_widgets_of_the_day/pages/opacity.dart';
//import 'package:flutter_widgets_of_the_day/pages/safearea.dart';
//import 'package:flutter_widgets_of_the_day/pages/wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FloatingActionButtonWidget(),
    );
  }
}
