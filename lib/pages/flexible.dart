import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.blue,
        title: const Text("Flexible Widgets"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 4,
            fit: FlexFit.loose,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
