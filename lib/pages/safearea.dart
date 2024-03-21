import 'package:flutter/material.dart';

class SafeAreaWidget extends StatefulWidget {
  const SafeAreaWidget({super.key});

  @override
  State<SafeAreaWidget> createState() => _SafeAreaWidgetState();
}

class _SafeAreaWidgetState extends State<SafeAreaWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        "SafeArea",
        style: TextStyle(fontSize: 35),
      ),
    );
  }
}
