import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.blue,
        title: const Text("Spacer Widgets"),
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            color: Colors.purple,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.green,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
