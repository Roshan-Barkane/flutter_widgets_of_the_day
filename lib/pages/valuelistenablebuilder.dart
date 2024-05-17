import 'package:flutter/material.dart';

final ValueNotifier<int> number = ValueNotifier(0);

class ValueListenableBuilderWidget extends StatelessWidget {
  const ValueListenableBuilderWidget({super.key});

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
              onPressed: () {
                number.value += 1;
              },
              child: const Icon(
                Icons.arrow_upward_outlined,
                size: 40,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ValueListenableBuilder(
              valueListenable: number,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: const TextStyle(fontSize: 35),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
