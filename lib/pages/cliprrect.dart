import 'package:flutter/material.dart';

class ClipRRectWidget extends StatefulWidget {
  const ClipRRectWidget({super.key});

  @override
  State<ClipRRectWidget> createState() => _ClipRRectWidgetState();
}

class _ClipRRectWidgetState extends State<ClipRRectWidget> {
  /*mostly programmer is used make the radius in image */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: Colors.purple,
        title: const Text(
          "ClipRRect Widget",
          style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ),
      body: Center(
        child: Card(
          color: Colors.yellow,
          child: Column(
            children: [
              ClipRRect(
                child: Image.asset("assets/p1.jpg"),
                borderRadius: const BorderRadius.all(
                  Radius.circular(190),
                ),
                clipBehavior: Clip.hardEdge,
              ),
              ClipRRect(
                child: Image.asset("assets/p1.jpg"),
                borderRadius: const BorderRadius.all(
                  Radius.circular(190),
                ),
                clipBehavior: Clip.hardEdge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
