import 'package:flutter/material.dart';

class SizeboxedWidget extends StatelessWidget {
  const SizeboxedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "SizeBoxed",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      /* ElevatedButton not having and size property so apply the size with sixeBoxed */
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Button",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
