import 'package:flutter/material.dart';

class Animation_Container extends StatelessWidget {
  const Animation_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 2),
            height: 200,
            width: 200,
            color: Color(
              0xFF00BB00,
            ),
            child: Text("Animation Controller"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Action"),
          ),
        ],
      ),
    );
  }
}
