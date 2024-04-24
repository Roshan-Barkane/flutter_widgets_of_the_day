import 'package:flutter/material.dart';

class FiltterBox_Widget extends StatelessWidget {
  const FiltterBox_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        toolbarHeight: 100,
        title: const Text(
          "FilterBox Widget",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 300,
          color: Colors.red,
          child: const FittedBox(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Flutter",
                style: TextStyle(
                    fontSize: 130,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
