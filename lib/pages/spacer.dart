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
          // if not given flex value its take automaticaly all remaining width and height.
          const Spacer(),
          Container(
            height: 60,
            width: 60,
            color: Colors.green,
          ),
          // if is takeing flex value white divide remaining width and height with flex value.
          const Spacer(
            flex: 5,
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
