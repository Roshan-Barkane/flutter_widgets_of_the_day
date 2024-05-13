import 'package:flutter/material.dart';

class ValueListenableBuilderWidget extends StatefulWidget {
  const ValueListenableBuilderWidget({super.key});

  @override
  State<ValueListenableBuilderWidget> createState() =>
      _ValueListenableBuilderState();
}

class _ValueListenableBuilderState extends State<ValueListenableBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blue,
        title: const Text(
          "Value Listenable Builder",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.arrow_upward_outlined,
                size: 40,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "value",
              style: TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
