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
                height: 350,
                width: 350,
                child: Card(
                  elevation: 20.0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade400,
                            ),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.blue,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "assets/p4.jpg",
                              fit: BoxFit.fill,
                              width: 90,
                            ),
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            "Shobhi Sharma",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.link,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: const Text(
                            "One time comes to product rules or sum rules how way solve it problem One time comes to product rules or sum rules how way solve it problem"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
