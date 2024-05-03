import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterWidget extends StatefulWidget {
  const BackDropFilterWidget({super.key});

  @override
  State<BackDropFilterWidget> createState() => _BackDropFilterWidgetState();
}

class _BackDropFilterWidgetState extends State<BackDropFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/p2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 4,
              sigmaY: 4,
              tileMode: TileMode.clamp,
            ),
            child: Center(
              child: Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      height: 50,
                      child: const Text(
                        "data",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                        ),
                        Text(
                          "Name of the Person",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.visibility),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
