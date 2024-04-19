import 'package:flutter/material.dart';

class HeroPage1 extends StatelessWidget {
  const HeroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.purple,
        title: const Text(
          "Hero Animation 💥",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Center(child: Text("here Home page")),
    );
  }
}
