import 'package:flutter/material.dart';
import 'package:flutter_widgets_of_the_day/pages/data.dart';
import 'package:flutter_widgets_of_the_day/pages/inherited.dart';
//import 'package:flutter_widgets_of_the_day/pages/customscollview.dart';
import 'package:flutter_widgets_of_the_day/pages/inheritedmodel.dart';
//import 'package:flutter_widgets_of_the_day/pages/stream_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Inherit(
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              primaryColor: Colors.pinkAccent),
          home: InheritedModelWidget(),
        ),
        database: Data());
  }
}
